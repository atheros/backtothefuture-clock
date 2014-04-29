#include <Bounce2.h>

#include <Si4703_Breakout.h>

#include <Keypad.h>

#include <PCF8583.h>

#include <Wire.h>

#define FIRMWARE_VERSION "0.0.1"

// I2C address of display controller
#define DISPLAY_ADDRESS 0x04
#define RTC_ADDRESS  0xA0

#define I2C_SDA A4
#define I2C_SCL A5
#define RADIO_RESET_PIN 4


int radioVolume = 4;
int radioChannel = 1075;
Si4703_Breakout radio(RADIO_RESET_PIN, I2C_SDA, I2C_SCL);

#define BUTTON_FN1  5
#define BUTTON_FN2  6
#define BUTTON_FN3  A6 /*A6*/
#define BUTTON_FN4  A7 /*A7*/
Bounce buttonFn1 = Bounce();
Bounce buttonFn2 = Bounce();



const byte keypadRows = 4; //four rows
const byte keypadCols = 3; //three columns
char keypadKeys[keypadRows][keypadCols] = {
  {'1','2','3'},
  {'4','5','6'},
  {'7','8','9'},
  {'*','0','#'}
};
byte keypadRowPins[keypadRows] = {8, 13, 12, 10}; //connect to the row pinouts of the keypad
byte keypadColPins[keypadCols] = {9, 7, 11}; //connect to the column pinouts of the keypad
Keypad keypad = Keypad( makeKeymap(keypadKeys), keypadRowPins, keypadColPins, keypadRows, keypadCols );

PCF8583* rtc;
static const char* month_names[12] = {
  "JAN ",
  "FEB ",
  "MAR ",
  "APR ",
  "MAY ",
  "JUNE",
  "JULY",
  "AUG ",
  "SEPT",
  "OCT ",
  "NOV ",
  "DEV "
};

void setup() {
  Serial.begin(115200);
  
  
//  Wire.begin();

  Serial.println("Time Circuit Clock - firmware Version " FIRMWARE_VERSION " initializing...");
  
  pinMode(BUTTON_FN1, INPUT);
  pinMode(BUTTON_FN2, INPUT);
  pinMode(BUTTON_FN3, INPUT);
  pinMode(BUTTON_FN4, INPUT);
  digitalWrite(BUTTON_FN1, LOW);
  digitalWrite(BUTTON_FN2, LOW);
  digitalWrite(BUTTON_FN3, LOW);
  digitalWrite(BUTTON_FN4, LOW);
  
  buttonFn1.attach(BUTTON_FN1);
  buttonFn1.interval(5);
  buttonFn2.attach(BUTTON_FN2);
  buttonFn2.interval(5);
  
  
  // power up radio
  delay(1000);
  radio.powerOn();
  // wait for other devices to initialize
  Serial.println("radio on!");
  delay(1000);
  
  radio.setVolume(radioVolume);
  radio.setChannel(radioChannel);
  
  rtc = new PCF8583(RTC_ADDRESS);
  /*
  rtc->second = 0;
  rtc->minute = 20;
  rtc->hour = 23;
  rtc->year = 2014;
  rtc->month = 4;
  rtc->day = 28;
  rtc->set_time();
  */
}

enum {
  I2C_DISPCMD_SET7  = 1,
  I2C_DISPCMD_SET14 = 2,
  I2C_DISPCMD_RESETA = 3,
  I2C_DISPCMD_BLINK7 = 4,
  I2C_DISPCMD_BLINK14 = 5
};



int loopCounter = 0;
enum {
  MODE_IDLE,
  MODE_RADIO_SEEK,
  MODE_RADIO_SET,
  MODE_SET_CLOCK,
  MODE_CONFIRM_SET_CLOCK
};
int mode = MODE_IDLE;
int inputFreq = 0;



int setClockPart = 0;
byte setClockValues[12];
#define SETCLOCK_MONTH1  0
#define SETCLOCK_MONTH2  1
#define SETCLOCK_DAY1   2
#define SETCLOCK_DAY2   3
#define SETCLOCK_YEAR1  4
#define SETCLOCK_YEAR2  5
#define SETCLOCK_YEAR3  6
#define SETCLOCK_YEAR4  7
#define SETCLOCK_HOUR1  8
#define SETCLOCK_HOUR2  9
#define SETCLOCK_MINUTE1 10
#define SETCLOCK_MINUTE2 11


void updateDisplays() {
  char buffer[30];
  char message[20];
  int channel;
  int day, year, hour, minute, month;
  char month_name[5];

  rtc->get_time();  
  // 7-segments
  
  if (mode == MODE_RADIO_SET) {
    channel = inputFreq;
  } else {
    channel = radioChannel;
  }

  Wire.beginTransmission(DISPLAY_ADDRESS);
  Wire.write(I2C_DISPCMD_RESETA);
  Wire.endTransmission();      
      
  if (mode == MODE_SET_CLOCK || mode == MODE_CONFIRM_SET_CLOCK) {
    month = setClockValues[SETCLOCK_MONTH1] * 10 + setClockValues[SETCLOCK_MONTH2];
    year = setClockValues[SETCLOCK_YEAR1] * 1000
        + setClockValues[SETCLOCK_YEAR2] * 100
        + setClockValues[SETCLOCK_YEAR3] * 10
        + setClockValues[SETCLOCK_YEAR4];
    day = setClockValues[SETCLOCK_DAY1] * 10 + setClockValues[SETCLOCK_DAY2];
    hour = setClockValues[SETCLOCK_HOUR1] * 10 + setClockValues[SETCLOCK_HOUR2];
    minute = setClockValues[SETCLOCK_MINUTE1] * 10 + setClockValues[SETCLOCK_MINUTE2];
    
    //year = 2000; month = 1; minute = 20; day = 13; hour = 16;
    if (setClockPart >= 2) {
      strcpy(month_name, month_names[month - 1]);
      /*Wire.beginTransmission(DISPLAY_ADDRESS);
      Wire.write(I2C_DISPCMD_BLINK7);
      Wire.write(10 + setClockPart - 2); 
      Wire.write(1);
      Wire.endTransmission();      */
    } else {
      sprintf(month_name, " %02d ", month);
      /*Wire.beginTransmission(DISPLAY_ADDRESS);
      Wire.write(I2C_DISPCMD_BLINK14);
      Wire.write(5 + setClockPart); 
      Wire.write(1);
      Wire.endTransmission();      */
    }
  } else {
    month = rtc->month;
    day = rtc->day;
    year = rtc->year;
    hour = rtc->hour;
    minute = rtc->minute;
    strcpy(month_name, month_names[month - 1]);
  }
    
  
  sprintf(buffer, "0519550600%02d%4d%02d%02d%4d", day, year, hour, minute, channel);
  Serial.print("7seg [");Serial.print(buffer); Serial.println("]");
  Wire.beginTransmission(DISPLAY_ADDRESS);
  Wire.write(I2C_DISPCMD_SET7);
  Wire.write(24);
  Wire.write((const uint8_t*)buffer, 24);
  Wire.endTransmission();
  // 14-segments
  if (mode == MODE_IDLE) {
    sprintf(message, "RADIO FM");
  } else if (mode == MODE_RADIO_SEEK) {
    sprintf(message, "SEEK STATION");
  } else if (mode == MODE_RADIO_SET) {
    sprintf(message, "SET FM FREQ");
  } else if (mode == MODE_SET_CLOCK) {
    sprintf(message, "SET CLOCK");
  } else if (mode == MODE_CONFIRM_SET_CLOCK) {
    sprintf(message, "SAVE CLOCK?");
  } else {
    sprintf(message, "WTF IS THIS");
  }
  sprintf(buffer, "NOV %s%s", month_name, message);
  Serial.print("14seg [");Serial.print(buffer); Serial.println("]");
  Wire.beginTransmission(DISPLAY_ADDRESS);
  int len = strlen(buffer);
  Wire.write(I2C_DISPCMD_SET14);
  Wire.write(len);
  Wire.write((const uint8_t*)buffer, len);
  Wire.endTransmission();    
 
}

void setupClockSet() {
  char buffer[15];
  setClockPart = 0;
  rtc->get_time();
  
  sprintf(buffer, "%02d%02d%04d%02d%02d", rtc->month, rtc->day, rtc->year, rtc->hour, rtc->minute);
  Serial.println(buffer);
  setClockValues[SETCLOCK_MONTH1] = buffer[SETCLOCK_MONTH1] - '0';
  setClockValues[SETCLOCK_MONTH2] = buffer[SETCLOCK_MONTH2] - '0';
  setClockValues[SETCLOCK_DAY1] = buffer[SETCLOCK_DAY1] - '0';
  setClockValues[SETCLOCK_DAY2] = buffer[SETCLOCK_DAY2] - '0';
  setClockValues[SETCLOCK_YEAR1] = buffer[SETCLOCK_YEAR1] - '0';
  setClockValues[SETCLOCK_YEAR2] = buffer[SETCLOCK_YEAR2] - '0';
  setClockValues[SETCLOCK_YEAR3] = buffer[SETCLOCK_YEAR3] - '0';
  setClockValues[SETCLOCK_YEAR4] = buffer[SETCLOCK_YEAR4] - '0';
  setClockValues[SETCLOCK_HOUR1] = buffer[SETCLOCK_HOUR1] - '0';
  setClockValues[SETCLOCK_HOUR2] = buffer[SETCLOCK_HOUR2] - '0';
  setClockValues[SETCLOCK_MINUTE1] = buffer[SETCLOCK_MINUTE1] - '0';
  setClockValues[SETCLOCK_MINUTE2] = buffer[SETCLOCK_MINUTE2] - '0';
  mode = MODE_SET_CLOCK;
  Serial.println("started setting new clock");
}

void loop() {
  /*
  Serial.println("loop");
  delay(1000);
  Serial.println("napierdalam!");
  Wire.beginTransmission(DISPLAY_ADDRESS);
  Serial.println("transmission began");
  Wire.write(I2C_DISPCMD_SET14);
  Wire.write(20);
//  Wire.write('A');
  Wire.write((const uint8_t*)"JAN FEB /HELLO WORLD", 20);
  Serial.println("terminating transmission");
  Wire.endTransmission();
  Serial.println("transmission terminated");
  delay(1000);
  Serial.println("napierdalam!");
  Wire.beginTransmission(DISPLAY_ADDRESS);
  Wire.write(I2C_DISPCMD_SET14);
  Wire.write(21);
  Wire.write((const uint8_t*)"JAN FEB /HACKADAY.IO/", 21);
  Wire.endTransmission();
  */
  
  loopCounter++;
  if (loopCounter == 100) {
    // about a second
    loopCounter = 0;
     
    updateDisplays();
    
  }
  
  buttonFn1.update();
  buttonFn2.update();
    
  if (loopCounter % 20 == 0) {
//    if (digitalRead(BUTTON_FN1)) {
//     Serial.println("FN1");
//    } else if (digitalRead(BUTTON_FN2)) {
//     Serial.println("FN2");
//    } else if (analogRead(BUTTON_FN3) > 512) {
//     Serial.println("FN3");
//    } else if (analogRead(BUTTON_FN4) > 512) {
//     Serial.println("FN4");
//    }
    if (buttonFn1.read()) {
      if (mode == MODE_IDLE) {
        mode = MODE_RADIO_SEEK;
        updateDisplays();
      } else if (mode == MODE_RADIO_SEEK) {
        inputFreq = 0;
        mode = MODE_RADIO_SET; 
        updateDisplays();
      } else if (mode == MODE_RADIO_SET) {
        setupClockSet();
        updateDisplays();
      } else if (mode == MODE_SET_CLOCK || mode == MODE_CONFIRM_SET_CLOCK) {
        mode = MODE_IDLE;
      }
    }
    if (buttonFn2.read()) {
      Serial.println("buttonFn2");
      char rdsBuffer[20];
      radio.readRDS(rdsBuffer, 15000);
      Serial.print("RDS: ["); Serial.print(rdsBuffer); Serial.println("]");
    }

  }

  char key = keypad.getKey();
  if (key != NO_KEY){
    Serial.println(key);
    if (mode == MODE_IDLE) {
      if (key == '*') {
        radioVolume--;
        if (radioVolume < 0) radioVolume = 0;
        radio.setVolume(radioVolume);
      } else if (key == '#') {
        radioVolume++;
        if (radioVolume > 15) radioVolume = 15;
        radio.setVolume(radioVolume);
      }
    } else if (mode == MODE_RADIO_SEEK) {
      if (key == '*') {
        radioChannel = radio.seekDown();
        updateDisplays();
      } else if (key == '#') {
        radioChannel = radio.seekUp();
        updateDisplays();
      }      
    } else if (mode == MODE_RADIO_SET) {
      if (key >= '0' && key <= '9') {
        inputFreq = inputFreq * 10;
        inputFreq += key - '0';
        if (inputFreq > 1080) {
          inputFreq = 0;
        }
        Serial.print("inputFreq="); Serial.println(inputFreq);
        updateDisplays();
      } else if (key == '*') {
        inputFreq = 0;
        Serial.print("inputFreq="); Serial.println(inputFreq);
        updateDisplays();
      } else if (key == '#') {
        if (inputFreq >= 1080 || inputFreq <= 870) {
          inputFreq = 0;
        } else {
          radio.setChannel(inputFreq);
          radioChannel = inputFreq;
          mode = MODE_IDLE;
        }
        Serial.print("inputFreq="); Serial.println(inputFreq);
        updateDisplays();
      }
    } else if (mode == MODE_SET_CLOCK) {
      if (key == '*') {
        // left
        if (setClockPart > 0) {
           setClockPart--;
        }
      } else if (key == '#') {
        // right
        if (setClockPart < 11) {
          setClockPart++;
        }
      } else if (key >= '0' && key <= '9') {
        key = key - '0';
        if (setClockPart == SETCLOCK_MONTH1 && key > 1) {
        } else if (setClockPart == SETCLOCK_MONTH2 && key > 2 && setClockValues[0] == 1) {
        } else if (setClockPart == SETCLOCK_DAY1 && key > 3) {
        } else if (setClockPart == SETCLOCK_DAY2 && key > 1 && setClockValues[SETCLOCK_DAY1] == 3) {
        } else if (setClockPart == SETCLOCK_HOUR1 && key > 2) {
        } else if (setClockPart == SETCLOCK_HOUR2 && key > 3 && setClockValues[SETCLOCK_HOUR1] == 2) {
        } else if (setClockPart == SETCLOCK_MINUTE1 && key > 5) {
        } else {
          setClockValues[setClockPart] = key;
          setClockPart++;
          if (setClockPart > SETCLOCK_MINUTE2) {
            mode = MODE_CONFIRM_SET_CLOCK;
          }
        }
        updateDisplays();
      }
    } else if (mode == MODE_CONFIRM_SET_CLOCK) {
      if (key == '*') {
        mode = MODE_SET_CLOCK;
        setClockPart = 0;
        updateDisplays();
      } else if (key == '#') {
        mode = MODE_IDLE;
        rtc->get_time();
        rtc->month = setClockValues[SETCLOCK_MONTH1] * 10 + setClockValues[SETCLOCK_MONTH2];
        rtc->year = setClockValues[SETCLOCK_YEAR1] * 1000
            + setClockValues[SETCLOCK_YEAR2] * 100
            + setClockValues[SETCLOCK_YEAR3] * 10
            + setClockValues[SETCLOCK_YEAR4];
        rtc->day = setClockValues[SETCLOCK_DAY1] * 10 + setClockValues[SETCLOCK_DAY2];
        rtc->hour = setClockValues[SETCLOCK_HOUR1] * 10 + setClockValues[SETCLOCK_HOUR2];
        rtc->minute = setClockValues[SETCLOCK_MINUTE1] * 10 + setClockValues[SETCLOCK_MINUTE2];
        rtc->second = 0;
        rtc->set_time();
        updateDisplays();
      }
    }
  }
  delay(10);
}

