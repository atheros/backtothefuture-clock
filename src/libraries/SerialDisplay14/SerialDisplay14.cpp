#include "SerialDisplay14.h"

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
// this is not applicable, since I had to route the board without vias
/*
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
*/
// to be able to route the wires, I had to mess with segments order
#define SEG_A  (1<<13)
#define SEG_B  (1<<14)
#define SEG_C  (1<<7)
#define SEG_D  (1<<5)
#define SEG_E  (1)
#define SEG_F  (1<<8)
#define SEG_G  (1<<9)
#define SEG_H  (1<<10)
#define SEG_J  (1<<11)
#define SEG_K  (1<<4)
#define SEG_L  (1<<3)
#define SEG_M  (1<<2)
#define SEG_N  (1<<1)
#define SEG_P  (1<<12)
#define SEG_DOT (1<<6)


static const unsigned int segments[15] = {
	~SEG_A, ~SEG_B, ~SEG_C, ~SEG_D, ~SEG_E, ~SEG_F, ~SEG_G, ~SEG_H, ~SEG_J, ~SEG_K, ~SEG_L, ~SEG_M, ~SEG_N, ~SEG_P, ~SEG_DOT
};

static const unsigned int font[] = {
   /*   */ ~0,
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

static const int maxChars = sizeof(font) / 2;

#define IS_LCASE(c) (c >= 'a' && c <= 'z')
#define IS_UCASE(c) (c >= 'A' && c <= 'Z')
#define IS_NUM(c)   (c >= '0' && c <= '9')


SerialDisplay14::SerialDisplay14(byte length, byte dataPin, byte clockPin, byte latchPin,
		byte pinA, byte pinB, byte pinC, byte pinD) :
	length(length), dataPin(dataPin), clockPin(clockPin), latchPin(latchPin), currentDisplay(0)
{
	pins[0] = pinA;
	pins[1] = pinB;
	pins[2] = pinC;
	pins[3] = pinD;

	buffer = (byte*)malloc(length);
	write(NULL, 0);
	for (int i = 0; i < 4; i++) {
		digitalWrite(pins[i], HIGH);
	}
}


void SerialDisplay14::update() {
	unsigned int glyph;
	int start;

	digitalWrite(pins[currentDisplay], HIGH);
	start = (currentDisplay + 1) % 4;

	digitalWrite(latchPin, LOW);
	byte c;

	//    tempCounter++;
	for (int i = start; i < length; i += 4) {
		glyph = font[buffer[i]];
		shiftOut(dataPin, clockPin, MSBFIRST, glyph >> 8);
		shiftOut(dataPin, clockPin, MSBFIRST, glyph & 0xff);
	}
	
	digitalWrite(latchPin, HIGH);

	currentDisplay = start;
	digitalWrite(pins[currentDisplay], LOW);
}

void SerialDisplay14::write(const char* text, byte len) {
	if (len < length) {
		for (byte i = len; i < length; i++) {
			buffer[i] = 0;
		}
	} else if (len > length) {
		len = length;
	}
	byte glythId, c;

	for (byte i = 0; i < len; i++) {
		c = text[i];
		if (IS_LCASE(c)) {
			glythId = c - 'a' + 1;
		} else if (IS_UCASE(c)) {
			glythId = c - 'A' + 1;
		} else if (IS_NUM(c)) {
			glythId = c - '1' + ('Z' - 'A') + 1;
		} else if (c == ' ') {
			glythId = 0;
		} else {
			// default "missing character" glyth?
			glythId = 0;
		}
		buffer[i] = glythId;
	}

	//    update();

}

