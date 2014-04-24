#define PIN_DATA   8
#define PIN_CLOCK  9
#define PIN_LATCH  10
#define PIN_RESET    11

// signal to turn odd characters on
#define PIN_CH_ODD  5
// signal to turn even characters on
#define PIN_CH_EVEN 6
// signal to enable display output
#define PIN_OUTPUT_E 7

#define PIN_PWM 3

/**
 *  AAA
 * F   B
 * F   B
 *  GGGn
 * E   C
 * E   C
 *  DDD P
 */
#define SEG_A  1
#define SEG_B  2
#define SEG_C  4
#define SEG_D  8
#define SEG_E  16
#define SEG_F  32
#define SEG_G  64
#define SEG_P  128


#define CH_0 (SEG_A | SEG_B | SEG_C | SEG_D | SEG_E | SEG_F)
#define CH_1 (SEG_B | SEG_C)
#define CH_2 (SEG_A | SEG_B | SEG_G | SEG_E | SEG_D)
#define CH_3 (SEG_A | SEG_B | SEG_G | SEG_C | SEG_D)
#define CH_4 (SEG_F | SEG_G | SEG_B | SEG_C)
#define CH_5 (SEG_A | SEG_F | SEG_G | SEG_C | SEG_D)
#define CH_6 (SEG_A | SEG_F | SEG_G | SEG_C | SEG_D | SEG_E)
#define CH_7 (SEG_A | SEG_B | SEG_C)
#define CH_8 (SEG_A | SEG_B | SEG_C | SEG_D | SEG_E | SEG_F | SEG_G)
#define CH_9 (SEG_A | SEG_B | SEG_C | SEG_D | SEG_F | SEG_G)

byte segment_char[12] = {~CH_0, ~CH_1, ~CH_2, ~CH_3, ~CH_4, ~CH_5, ~CH_6, ~CH_7, ~CH_8, ~CH_9, ~SEG_P, 0xff};
byte segments[8] = {SEG_A, SEG_B, SEG_C, SEG_D, SEG_E, SEG_F, SEG_G, SEG_P};



class SerialDisplay {
private:
  byte *buffer;
  byte length;
  byte currentDisplay;
  byte dataPin, clockPin, latchPin, oddPin, evenPin;
  
public:
  SerialDisplay(byte length, byte dataPin, byte clockPin, byte latchPin, byte oddPin, byte evenPin)
    : length(length), dataPin(dataPin), clockPin(clockPin), latchPin(latchPin), oddPin(oddPin), evenPin(evenPin), currentDisplay(0)
  {
    buffer = (byte*)malloc(length);
    write(NULL, 0);
    digitalWrite(oddPin, HIGH);
    digitalWrite(evenPin, HIGH);
  }
   
  void update() {
    byte start;
    if (currentDisplay == 0) {
      start = 1;
      digitalWrite(evenPin, HIGH);
    } else {
      start = 0;
      digitalWrite(oddPin, HIGH);
    }
    
    
    digitalWrite(latchPin, LOW);
    byte c;
    for(byte i = start; i < length; i+= 2) {
      
      //shiftOut(dataPin, clockPin, MSBFIRST, segment_char[buffer[i]]);
      //c = buffer[i];
      //if (c >= '0' && c <= '0') {
      //  shiftOut(dataPin, clockPin, MSBFIRST, segment_char[c - '0']);
      //} else if (c == '.') {
      //  shiftOut(dataPin, clockPin, MSBFIRST, segment_char[10]);
      //} else {
      //  shiftOut(dataPin, clockPin, MSBFIRST, segment_char[11]);
     // }
      //shiftOut(dataPin, clockPin, MSBFIRST, start == 0 ? segment_char[2] : segment_char[3]);
//      shiftOut(dataPin, clockPin, MSBFIRST, segment_char[buffer[i]]);
      shiftOut(dataPin, clockPin, MSBFIRST, segment_char[buffer[length - i - 1]]);
      //shiftOut(dataPin, clockPin, MSBFIRST, segment_char[length - i - 1]);
//      Serial.print(buffer[length - i - 1]);
//      Serial.print(" ");
    }
//    Serial.println();
    digitalWrite(latchPin, HIGH);

    if (currentDisplay == 0) {
      currentDisplay = 1;
      digitalWrite(oddPin, LOW);
    } else {
      currentDisplay = 0;
      digitalWrite(evenPin, LOW);
    }
    
  }
  
  
  void write(char* text, byte len) {
    if (len < length) {
      for (byte i = len; i < length; i++) {
        buffer[i] = 11;
      }
    }
     
    for (byte i = 0; i < len; i++) {
      byte c = text[i];
      if (c >= '0' && c <= '9') {
        c = c - '0';
      } else if (c == '.') {
        c = 10;
      } else {
        c = 11;
      }
      buffer[i] = c;
    }
    
//    update();
  }
};

SerialDisplay display(12, PIN_DATA, PIN_CLOCK, PIN_LATCH, PIN_CH_ODD, PIN_CH_EVEN);

void setup() {
  Serial.begin(115200);
  // put your setup code here, to run once:
  pinMode(PIN_DATA, OUTPUT);
  pinMode(PIN_CLOCK, OUTPUT);
  pinMode(PIN_LATCH, OUTPUT);
  pinMode(PIN_CH_ODD, OUTPUT);
  pinMode(PIN_CH_EVEN, OUTPUT);
  pinMode(PIN_RESET, OUTPUT);
  pinMode(PIN_OUTPUT_E, OUTPUT);
  

  pinMode(PIN_PWM, OUTPUT);

    digitalWrite(PIN_RESET, LOW);
    digitalWrite(PIN_RESET, HIGH);
    digitalWrite(PIN_OUTPUT_E, LOW);
  
  analogWrite(PIN_PWM, 127);
}

byte counter_msb = 0;
byte counter_lsb = 0;
byte i = 0;

byte mode = 1;
int counter = 0;
int counterActive = 1;

void loop() {
  
  // very very very old tests
//  digitalWrite(PIN_LATCH, LOW);
//  shiftOut(PIN_DATA, PIN_CLOCK, LSBFIRST, SEG_A | SEG_C | SEG_E | SEG_G);
//  shiftOut(PIN_DATA, PIN_CLOCK, LSBFIRST, 0);
//  digitalWrite(PIN_LATCH, HIGH);
  
//  delay(1000);
/*
  digitalWrite(PIN_LATCH, LOW);
  shiftOut(PIN_DATA, PIN_CLOCK, MSBFIRST, segment_char[counter_lsb]);
//  shiftOut(PIN_DATA, PIN_CLOCK, MSBFIRST, counter_msb ? segment_char[counter_msb] : 0xff);
  digitalWrite(PIN_LATCH, HIGH);

  analogWrite(PIN_PWM, (255.0 / 10 * (counter_lsb + 1)) );
  
  delay(1000);
  
  
  counter_lsb++;
  if (counter_lsb == 10) {
    counter_lsb = 0;
    counter_msb++;
  }
  if (counter_msb == 10) {
    counter_msb = 0;
  }
*/
//  digitalWrite(PIN_CLOCK, HIGH);
//  digitalWrite(PIN_LATCH, LOW);
//  shiftOut(PIN_DATA, PIN_CLOCK, MSBFIRST, segments[i]);
//  digitalWrite(PIN_LATCH, HIGH);
//  Serial.print((segments[i]));
//  Serial.print(" ");
//  Serial.println(i);
//  delay(100);

//  digitalWrite(PIN_LATCH, LOW);
//  shiftOut(PIN_DATA, PIN_CLOCK, MSBFIRST, segment_char[0]);
////  digitalWrite(PIN_LATCH, HIGH);
//  delay(400);
//    digitalWrite(PIN_RESET, LOW);
//    digitalWrite(PIN_RESET, HIGH);
  if (mode == 0) {
    // old tests
    while (Serial.available()) {
      byte c = Serial.read();
      if (c >= '0' && c <= '9') {
        i = c - '0';
      }
      digitalWrite(PIN_LATCH, LOW);
      shiftOut(PIN_DATA, PIN_CLOCK, MSBFIRST, segment_char[i]);
      shiftOut(PIN_DATA, PIN_CLOCK, MSBFIRST, segment_char[(i+1) % 10]);
      digitalWrite(PIN_LATCH, HIGH);
        delay(500);
     // Serial.println(segment_char[i]);
    }
  } else if (mode == 1) {
    // current tests
    // write some incresing value to the display
    while (Serial.available()) {
      byte c = Serial.read();
      if (c >= '0' && c <= '9') {
        analogWrite(PIN_PWM, 255.0 / 10 * (c + 1));
        
      }
    }
/*    while (Serial.available()) {
      byte c = Serial.read();
      if (c == 'q') {
        // disable output
        digitalWrite(PIN_OUTPUT_E, LOW);
      } else if (c == 'a') {
        // enable output
        digitalWrite(PIN_OUTPUT_E, HIGH);
      } else if (c == ' ') {
        // toggle counter
        counterActive = !counterActive;
      }
 
    }
    */
    if (counter_msb == 0) {
      char buffer[10];
      //sprintf(buffer, "%6d", counter);
//      sprintf(buffer, "%i%i%i%i%i%i", counter % 2 ? 1 : 8, counter % 2 == 0 ? 1 : 8);
//      sprintf(buffer, "123456");
      sprintf(buffer, "123456123456");
      //Serial.println(buffer);
      display.write(buffer, 12);
      counter++;
      if (counter == 10000) {
        counter = 0;
      }
    }
    if (counterActive) {
      counter_msb++;
    }
    if (counter_msb == 50) {
      counter_msb = 0;
    }
    // update the display
    display.update();
    delay(1);
    
  }

  

  //i++;
//  if (i > 9) i = 0;

}

