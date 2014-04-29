#include <SerialDisplay7.h>
#include <SerialDisplay14.h>

#include <Wire.h>

#define I2C_ADDRESS  0x04


#define PIN_DATA7   8
#define PIN_CLOCK7  9
#define PIN_LATCH7  10
// signal to turn odd characters on
#define PIN_CH7_ODD  5
// signal to turn even characters on
#define PIN_CH7_EVEN 6
// signal to enable display output


#define PIN_DATA14    2
#define PIN_CLOCK14   12
#define PIN_LATCH14   13
// signal to turn characters on
#define PIN_CH14_1  14
#define PIN_CH14_2  15
#define PIN_CH14_3  16
#define PIN_CH14_4  17


// common pins
#define PIN_PWM       3
#define PIN_OUTPUT_E  7
#define PIN_RESET     11


// number of 7-segment displays
#define SEG7_SIZE  24
// 7-segment display object
SerialDisplay7 display7(SEG7_SIZE, PIN_DATA7, PIN_CLOCK7, PIN_LATCH7, PIN_CH7_ODD, PIN_CH7_EVEN, 1);
// character buffer for 7-segment display


// number of 14-segment displays
#define SEG14_SIZE  20
// 14-segment display object
SerialDisplay14 display14(SEG14_SIZE, PIN_DATA14, PIN_CLOCK14, PIN_LATCH14, PIN_CH14_1, PIN_CH14_2, PIN_CH14_3, PIN_CH14_4);
// character buffer



void setPwmFrequency(int pin, int divisor) {
  byte mode;
  if(pin == 5 || pin == 6 || pin == 9 || pin == 10) {
    switch(divisor) {
      case 1: mode = 0x01; break;
      case 8: mode = 0x02; break;
      case 64: mode = 0x03; break;
      case 256: mode = 0x04; break;
      case 1024: mode = 0x05; break;
      default: return;
    }
    if(pin == 5 || pin == 6) {
      TCCR0B = TCCR0B & 0b11111000 | mode;
    } else {
      TCCR1B = TCCR1B & 0b11111000 | mode;
    }
  } else if(pin == 3 || pin == 11) {
    switch(divisor) {
      case 1: mode = 0x01; break;
      case 8: mode = 0x02; break;
      case 32: mode = 0x03; break;
      case 64: mode = 0x04; break;
      case 128: mode = 0x05; break;
      case 256: mode = 0x06; break;
      case 1024: mode = 0x7; break;
      default: return;
    }
    TCCR2B = TCCR2B & 0b11111000 | mode;
  }
}

void delay2(long int ms) {
  long int dest = millis() + ms;
  volatile int i;
  while(millis() < dest) {
    i++;
  }
}


#define DEBUG
#ifdef DEBUG
#define  DPRINT(text) Serial.println(text)
#else
#define  DPRINT(text)
#endif



enum {
  I2C_CMD_SET7  = 1,
  I2C_CMD_SET14 = 2,
  I2C_CMD_RESETA = 3,
  I2C_CMD_BLINK7 = 4,
  I2C_CMD_BLINK14 = 5
};


#define I2C_BUFFER_SIZE  60
int i2c_cmd = 0;
int i2c_expected_size = -1;
int i2c_size = 0;
char i2c_buffer[I2C_BUFFER_SIZE];

void i2c_receive(int count) {
  byte c, i;
  DPRINT("i2c receive bytes:");
  DPRINT(count);
  
  while (Wire.available()) {
    c = Wire.read();
    // try twice
    for (i = 0; i < 2; i++) {
      if (i2c_cmd == 0) {
        // accept new command
        if (c == I2C_CMD_RESETA) {
          display7.resetAttributes();
          display14.resetAttributes();
        } else if (c == I2C_CMD_SET7 || c == I2C_CMD_SET14 || c == I2C_CMD_BLINK7 || c == I2C_CMD_BLINK14) {
          // set display
          i2c_cmd = c;
          i2c_expected_size = -1;
          i2c_size = 0;
          break;
        } else {
          // reset I2C
          i2c_cmd = 0;
        }
      } else if ((i2c_cmd == I2C_CMD_SET7 || i2c_cmd == I2C_CMD_SET14 || i2c_cmd == I2C_CMD_BLINK7 || i2c_cmd == I2C_CMD_BLINK14) && i2c_expected_size == -1) {
        // get size of input for text commands
        i2c_expected_size = c;
        if (c == 0 && (i2c_cmd == I2C_CMD_SET7 || i2c_cmd == I2C_CMD_SET14)) {
          // no text to display - can be used to clear the screen
          if (i2c_cmd == I2C_CMD_SET7) {
            display7.write("", 0);
          } else if (i2c_cmd == I2C_CMD_SET14) {
            display14.write("", 0);
          }
          i2c_cmd = 0;
        }
        break;
      } else if ((i2c_cmd == I2C_CMD_SET7 || i2c_cmd == I2C_CMD_SET14) && i2c_expected_size != -1) {
        // get input for text commands
        if (i2c_size > I2C_BUFFER_SIZE) {
          // prevent buffer overflow and ignore the rest of input
          i2c_size++;
        } else {
          // add to buffer
          i2c_buffer[i2c_size++] = c;
        }
        
        if (i2c_size == i2c_expected_size) {
          // we got the data we were waiting for
          
          if (i2c_size > I2C_BUFFER_SIZE) {
            // if there was a buffer overflow, replace the size to prevent problems
            i2c_size = I2C_BUFFER_SIZE;
          }
          
          // execute the command
          if (i2c_cmd == I2C_CMD_SET7) {
            display7.write(i2c_buffer, i2c_size);
          } else if (i2c_cmd == I2C_CMD_SET14) {
            display14.write(i2c_buffer, i2c_size);
          }
          i2c_cmd = 0;
        }
        break;
      } else if ((i2c_cmd == I2C_CMD_BLINK7 || i2c_cmd == I2C_CMD_BLINK14) && i2c_expected_size != -1) {
        if (i2c_cmd == I2C_CMD_BLINK7) {
          DPRINT("I2C_CMD_BLINK7");
          display7.blink(i2c_expected_size, c);
        } else if (i2c_cmd == I2C_CMD_BLINK14) {
          DPRINT("I2C_CMD_BLINK14");
          display14.blink(i2c_expected_size, c); 
        }
        DPRINT(i2c_expected_size);
        DPRINT(c);
        i2c_cmd = 0;
      } else {
        // unknown input
      }
    }
  }
}



void setup() {
#ifdef DEBUG
  Serial.begin(115200);
#endif
  // initialize pins we will be using
  pinMode(PIN_DATA7, OUTPUT);
  pinMode(PIN_CLOCK7, OUTPUT);
  pinMode(PIN_LATCH7, OUTPUT);
  pinMode(PIN_CH7_ODD, OUTPUT);
  pinMode(PIN_CH7_EVEN, OUTPUT);
  
  pinMode(PIN_DATA14, OUTPUT);
  pinMode(PIN_CLOCK14, OUTPUT);
  pinMode(PIN_LATCH14, OUTPUT);
  pinMode(PIN_CH14_1, OUTPUT);
  pinMode(PIN_CH14_2, OUTPUT);
  pinMode(PIN_CH14_3, OUTPUT);
  pinMode(PIN_CH14_4, OUTPUT);

  
  pinMode(PIN_RESET, OUTPUT);
  pinMode(PIN_OUTPUT_E, OUTPUT);
  pinMode(PIN_PWM, OUTPUT);

  // reset all 74hc595
  digitalWrite(PIN_RESET, LOW);
  digitalWrite(PIN_RESET, HIGH);
  
  // enable output
  digitalWrite(PIN_OUTPUT_E, LOW);
  
  // set brightness to medium at the start
  setPwmFrequency(PIN_PWM, 1);
  analogWrite(PIN_PWM, 10); 
  
  // test string
  //display7.write("261985012405195506000000", SEG7_SIZE);
  //display7.write  ("101214161820212325272930", SEG7_SIZE);
  //display14.write("OCT NOV HACKADAY.IO", 19);
  //display14.write("ABCDEFGHIJKLMNOPQRST", SEG14_SIZE);
  
      Wire.begin(I2C_ADDRESS);
      Wire.onReceive(i2c_receive);
      DPRINT("Wire initialized");

}


bool initDone = false;


void initFunc() {
  static int initPhase = 0;
  static int initCounter = 0;
  
  if (initPhase == 0) {
    display7.write("888888888888888888888888", SEG7_SIZE);
    display14.write("\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0", SEG14_SIZE);
    
    analogWrite(PIN_PWM, 255);    
    initPhase = 1; 
  } else if (initPhase == 1) {
    if (initCounter == 50) {
      analogWrite(PIN_PWM, 40);
    } else if (initCounter == 100) {
      analogWrite(PIN_PWM, 80);
    } else if (initCounter == 200) {
      analogWrite(PIN_PWM, 120);
    } else if (initCounter == 300) {
      analogWrite(PIN_PWM, 150);
    } else if (initCounter == 400) {
      analogWrite(PIN_PWM, 200);
      initDone = true;
      // default text
      display7.write("261985012405195506000000", SEG7_SIZE);
      display14.write("OCT NOV /HACKADAY.IO/", 21);
      
    }
    
    display7.update();
    display14.update();
    initCounter++;
    delay(1);
  }
}


int counter = 0;

void loop() {
  if (!initDone) {
    initFunc();
    return;
  }

  
// test hide attribute
//  if (counter == 0) {
//    display7.resetAttributes();
//    display7.hide(chr, 2);
//    chr++;
//    if (chr > SEG7_SIZE) {
//     chr = 0;
//    }   
//  }
// test hide group of displays
/*
  if (counter == 0 && 0) {
    if (chr == 0) {
      // show all
      display7.resetAttributes();
    } else if (chr == 1) {
      // hide first
      display7.resetAttributes();
      display7.hide(0, 10);
    } else if (chr == 2) {
      // hide second, show firs
      display7.resetAttributes();
      display7.hide(10, 10);
    } else if (chr == 3) {
      // hide all
      display7.resetAttributes();
      display7.hide(0, 20);
    }
    
    chr++;
    if (chr == 4) {
      chr = 0;
    }
  }
  
  // update the display
  display7.update();
  display14.update();
  // and wait a bit
  
  
  counter++;
  if (counter == 100) {
    counter = 0;
    chr+=5;
    if (chr > 255) {
      chr = 0;
    }
    analogWrite(PIN_PWM, chr); 
  }
*/

  if (counter == 1000) {
    display7.updateBlink(true);
    display14.updateBlink(true);
  } else if (counter == 2000) {
    display7.updateBlink(false);
    display14.updateBlink(false);
    counter = 0;
  }    
  display7.update();
  display14.update();
  delay(1);
  counter++;
}
