#define PIN_DATA   2
#define PIN_CLOCK  12
#define PIN_LATCH  13

#define PIN_RESET    11

/**
 *  AAAAAA
 * Fg  H  jB
 * F g H j B
 * F  gHj  B
 *  PPP KKK
 * E  nMl  C
 * E n M l C
 * En  M  lC
 *  DDDDDDD DOT
 */
#define SEG_A  1
#define SEG_B  2
#define SEG_C  4
#define SEG_D  8
#define SEG_E  16
#define SEG_F  32
#define SEG_G  64
#define SEG_H  128
#define SEG_J  256
#define SEG_K  512
#define SEG_L  1024
#define SEG_M  2048
#define SEG_N  4096
#define SEG_P  8192
#define SEG_DOT 16384

//#include <stdint.h>
//typedef uint8_t byte;



// signal to turn characters on
#define PIN_CH_1  14
#define PIN_CH_2  15
#define PIN_CH_3  16
#define PIN_CH_4  17

// signal to enable display output
#define PIN_OUTPUT_E 7


unsigned int font[] = {
   /* A */ ~(SEG_A | SEG_B | SEG_C | SEG_E | SEG_F | SEG_P | SEG_K),
   /* B */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_H | SEG_M | SEG_K),
   /* C */ ~(SEG_A | SEG_D | SEG_E | SEG_F),
   /* D */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_H | SEG_M),
   /* E */ ~(SEG_A | SEG_D | SEG_E | SEG_F | SEG_P),
   /* F */ ~(SEG_A | SEG_E | SEG_F | SEG_P),
   /* G */ ~(SEG_A | SEG_C | SEG_D | SEG_E | SEG_F | SEG_K),
   /* H */ ~(SEG_B | SEG_C | SEG_E | SEG_F | SEG_P | SEG_K),
   /* I */ ~(SEG_A | SEG_D | SEG_H | SEG_M),
   /* J */ ~(SEG_B | SEG_C | SEG_D | SEG_E),
   /* K */ ~(SEG_E | SEG_F | SEG_P | SEG_J | SEG_L),
   /* L */ ~(SEG_D | SEG_E | SEG_F),
   /* M */ ~(SEG_B | SEG_C | SEG_E | SEG_F | SEG_G | SEG_J),
   /* N */ ~(SEG_B | SEG_C | SEG_E | SEG_F | SEG_G | SEG_L),
   /* O */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_E | SEG_F),
   /* P */ ~(SEG_A | SEG_B | SEG_E | SEG_F | SEG_P | SEG_K),
   /* Q */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_E | SEG_F | SEG_L),
   /* R */ ~(SEG_A | SEG_B | SEG_E | SEG_F | SEG_P | SEG_K | SEG_L),
   /* S */ ~(SEG_A | SEG_C | SEG_D | SEG_F | SEG_P | SEG_K),
   /* T */ ~(SEG_A | SEG_H | SEG_M),
   /* U */ ~(SEG_B | SEG_C | SEG_D | SEG_E | SEG_F),
   /* V */ ~(SEG_E | SEG_F | SEG_J | SEG_N),
   /* W */ ~(SEG_B | SEG_C | SEG_E | SEG_F | SEG_L | SEG_N),
   /* X */ ~(SEG_G | SEG_J | SEG_L | SEG_N),
   /* Y */ ~(SEG_G | SEG_J | SEG_M),
   /* Z */ ~(SEG_A | SEG_D | SEG_J | SEG_N),
   /* 1 */ ~(SEG_H | SEG_M),
   /* 2 */ ~(SEG_A | SEG_B | SEG_D | SEG_E | SEG_P | SEG_K),
   /* 3 */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_P | SEG_K),
   /* 4 */ ~(SEG_B | SEG_C | SEG_F | SEG_P | SEG_K),
   /* 5 */ ~(SEG_A | SEG_C | SEG_D | SEG_F | SEG_P | SEG_K),
   /* 6 */ ~(SEG_A | SEG_C | SEG_D | SEG_E | SEG_F | SEG_P | SEG_K),
   /* 7 */ ~(SEG_A | SEG_B | SEG_C),
   /* 8 */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_E | SEG_F | SEG_P | SEG_K),
   /* 9 */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_F | SEG_P | SEG_K),
   /* 0 */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_E | SEG_F | SEG_J | SEG_N),
   /* , */ ~(SEG_N),
   /* ' */ ~(SEG_H),
   /* " */ ~(SEG_F | SEG_H),
   /* - */ ~(SEG_P | SEG_K),
   /* _ */ ~(SEG_D),
   /* + */ ~(SEG_H | SEG_K | SEG_M | SEG_P),
   /* * */ ~(SEG_G | SEG_H | SEG_J | SEG_K | SEG_L | SEG_M | SEG_N | SEG_P),
   /* / */ ~(SEG_J | SEG_N),
   /* \ */ ~(SEG_G | SEG_L),
   /* > */ ~(SEG_G | SEG_N),
   /* < */ ~(SEG_J | SEG_L),
   /* ? */ ~(SEG_A | SEG_B | SEG_K | SEG_M),
   /* = */ ~(SEG_P | SEG_K | SEG_D)
};
int maxChars = sizeof(font) / 2;

#define IS_LCASE(c) (c >= 'a' && c <= 'z')
#define IS_UCASE(c) (c >= 'A' && c <= 'Z')
#define IS_NUM(c)   (c >= '1' && c <= '0')

int tempCounter = 0;
class SerialDisplay14 {
private:
  byte *buffer;
  byte length;
  byte currentDisplay;
  byte dataPin, clockPin, latchPin, oddPin, evenPin;
  byte pins[4];
  
public:
  SerialDisplay14(byte length, byte dataPin, byte clockPin, byte latchPin, byte pinA, byte pinB, byte pinC, byte pinD)
    : length(length), dataPin(dataPin), clockPin(clockPin), latchPin(latchPin), currentDisplay(0)
  {
    pins[0] = pinA;
    pins[1] = pinB;
    pins[2] = pinC;
    pins[3] = pinD;
    
    buffer = (byte*)malloc(length);
    write(NULL, 0);
    for(int i = 0; i < 4; i++) {
      digitalWrite(pins[i], HIGH);
    }
  }
   
  void update() {
    byte start;

    digitalWrite(pins[currentDisplay], HIGH);
    start = (currentDisplay + 1) % 4;
    
    
    digitalWrite(latchPin, LOW);
    byte c;
    int glyth;
//    tempCounter++;
    for(byte i = start; i < length; i+= 4) {
      //shiftOut(dataPin, clockPin, MSBFIRST, segment_char[buffer[length - i - 1]]);
      c = buffer[length - i - 1];
      if (IS_LCASE(c)) {
        glyth = font[c - 'a'];
      } else if (IS_UCASE(c)) {
        glyth = font[c - 'A'];
      } else if (IS_NUM(c)) {
        glyth = font[c - '1' + ('Z' - 'A')];
      } else {
        glyth = ~0;
      }
      //glyth = ~(1 << ((tempCounter >> 8 + i) % 15));
      glyth = font[(tempCounter + i) % maxChars];
      shiftOut(dataPin, clockPin, MSBFIRST, glyth & 0xff);
      shiftOut(dataPin, clockPin, MSBFIRST, glyth >> 8);
      //shiftOut(dataPin, clockPin, MSBFIRST, glyth >> 8);
      //shiftOut(dataPin, clockPin, MSBFIRST, glyth & 0xff);
    }
    //Serial.println(1 << ((tempCounter >> 8) % 15));
    digitalWrite(latchPin, HIGH);

    currentDisplay = start;
    digitalWrite(pins[currentDisplay], LOW);
  }
  
  
  void write(char* text, byte len) {
    if (len < length) {
      for (byte i = len; i < length; i++) {
        buffer[i] = 0;
      }
    } else if (len > length) {
      len = length;
    }
     
    for (byte i = 0; i < len; i++) {
      byte c = text[i];
//      if (c >= '0' && c <= '9') {
//        c = c - '0';
//      } else if (c == '.') {
//        c = 10;
//      } else {
//        c = 11;
//      }
      buffer[i] = c;
    }
    
//    update();
  }
};

SerialDisplay14 display(4, PIN_DATA, PIN_CLOCK, PIN_LATCH, PIN_CH_1, PIN_CH_2, PIN_CH_3, PIN_CH_4);


void setup() {
  Serial.begin(9600);
  // put your setup code here, to run once:
  pinMode(PIN_DATA, OUTPUT);
  pinMode(PIN_CLOCK, OUTPUT);
  pinMode(PIN_LATCH, OUTPUT);
  pinMode(PIN_CH_1, OUTPUT);
  pinMode(PIN_CH_2, OUTPUT);
  pinMode(PIN_CH_3, OUTPUT);
  pinMode(PIN_CH_4, OUTPUT);
  pinMode(PIN_RESET, OUTPUT);
  pinMode(PIN_OUTPUT_E, OUTPUT);
  
  digitalWrite(PIN_RESET, LOW);
  digitalWrite(PIN_RESET, HIGH);
  digitalWrite(PIN_OUTPUT_E, LOW);
}


bool counterActive = false;

int counter_msb = 0, counter = 0;

void loop() {
    while (Serial.available()) {
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
      } else if (c == 'p') {
        tempCounter = (tempCounter + 1) % maxChars;
      }
      
    }
    
    if (counter_msb == 0 && counterActive) {
      char buffer[10];
      sprintf(buffer, "%4d", counter);
      //Serial.println(buffer);
      display.write(buffer, 4);
      counter++;
      if (counter == 10000) {
        counter = 0;
      }
      tempCounter = (tempCounter + 1) % maxChars;
    }
    if (counterActive) {
      counter_msb++;
    }
    if (counter_msb == 500) {
      counter_msb = 0;
    }
    // update the display
    display.update();
    delay(1);
}

