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
   /*  0 -   */ ~0,
   /*  1 - A */ ~(SEG_A | SEG_B | SEG_C | SEG_E | SEG_F | SEG_P | SEG_K),
   /*  2 - B */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_H | SEG_M | SEG_K),
   /*  3 - C */ ~(SEG_A | SEG_D | SEG_E | SEG_F),
   /*  4 - D */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_H | SEG_M),
   /*  5 - E */ ~(SEG_A | SEG_D | SEG_E | SEG_F | SEG_P),
   /*  6 - F */ ~(SEG_A | SEG_E | SEG_F | SEG_P),
   /*  7 - G */ ~(SEG_A | SEG_C | SEG_D | SEG_E | SEG_F | SEG_K),
   /*  8 - H */ ~(SEG_B | SEG_C | SEG_E | SEG_F | SEG_P | SEG_K),
   /*  9 - I */ ~(SEG_A | SEG_D | SEG_H | SEG_M),
   /* 10 - J */ ~(SEG_B | SEG_C | SEG_D | SEG_E),
   /* 11 - K */ ~(SEG_E | SEG_F | SEG_P | SEG_J | SEG_L),
   /* 12 - L */ ~(SEG_D | SEG_E | SEG_F),
   /* 13 - M */ ~(SEG_B | SEG_C | SEG_E | SEG_F | SEG_G | SEG_J),
   /* 14 - N */ ~(SEG_B | SEG_C | SEG_E | SEG_F | SEG_G | SEG_L),
   /* 15 - O */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_E | SEG_F),
   /* 16 - P */ ~(SEG_A | SEG_B | SEG_E | SEG_F | SEG_P | SEG_K),
   /* 17 - Q */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_E | SEG_F | SEG_L),
   /* 18 - R */ ~(SEG_A | SEG_B | SEG_E | SEG_F | SEG_P | SEG_K | SEG_L),
   /* 19 - S */ ~(SEG_A | SEG_C | SEG_D | SEG_F | SEG_P | SEG_K),
   /* 20 - T */ ~(SEG_A | SEG_H | SEG_M),
   /* 21 - U */ ~(SEG_B | SEG_C | SEG_D | SEG_E | SEG_F),
   /* 22 - V */ ~(SEG_E | SEG_F | SEG_J | SEG_N),
   /* 23 - W */ ~(SEG_B | SEG_C | SEG_E | SEG_F | SEG_L | SEG_N),
   /* 24 - X */ ~(SEG_G | SEG_J | SEG_L | SEG_N),
   /* 25 - Y */ ~(SEG_G | SEG_J | SEG_M),
   /* 26 - Z */ ~(SEG_A | SEG_D | SEG_J | SEG_N),
   /* 37 - 0 */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_E | SEG_F | SEG_J | SEG_N),
   /* 28 - 1 */ ~(SEG_H | SEG_M),
   /* 29 - 2 */ ~(SEG_A | SEG_B | SEG_D | SEG_E | SEG_P | SEG_K),
   /* 30 - 3 */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_P | SEG_K),
   /* 31 - 4 */ ~(SEG_B | SEG_C | SEG_F | SEG_P | SEG_K),
   /* 32 - 5 */ ~(SEG_A | SEG_C | SEG_D | SEG_F | SEG_P | SEG_K),
   /* 33 - 6 */ ~(SEG_A | SEG_C | SEG_D | SEG_E | SEG_F | SEG_P | SEG_K),
   /* 34 - 7 */ ~(SEG_A | SEG_B | SEG_C),
   /* 35 - 8 */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_E | SEG_F | SEG_P | SEG_K),
   /* 36 - 9 */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_F | SEG_P | SEG_K),
   /* 37 - . */ ~(SEG_DOT),
   /* 38 - ' */ ~(SEG_H),
   /* 39 - " */ ~(SEG_F | SEG_H),
   /* 40 - - */ ~(SEG_P | SEG_K),
   /* 41 - _ */ ~(SEG_D),
   /* 42 - + */ ~(SEG_H | SEG_K | SEG_M | SEG_P),
   /* 43 - * */ ~(SEG_G | SEG_H | SEG_J | SEG_K | SEG_L | SEG_M | SEG_N | SEG_P),
   /* 44 - / */ ~(SEG_J | SEG_N),
   /* 45 - \ */ ~(SEG_G | SEG_L),
   /* 46 - > */ ~(SEG_G | SEG_N),
   /* 47 - < */ ~(SEG_J | SEG_L),
   /* 48 - ? */ ~(SEG_A | SEG_B | SEG_K | SEG_M),
   /* 49 = */ ~(SEG_P | SEG_K | SEG_D),
   /* 50 ALL */ ~(SEG_A | SEG_B | SEG_C | SEG_D | SEG_E | SEG_F | SEG_G | SEG_H | SEG_J | SEG_K | SEG_L | SEG_M | SEG_N | SEG_P | SEG_DOT)
};

#define FONT_NUMERIC	27
#define FONT_DOT		37
#define FONT_TESTCHAR	50

static const int maxChars = sizeof(font) / 2;

#define IS_LCASE(c) (c >= 'a' && c <= 'z')
#define IS_UCASE(c) (c >= 'A' && c <= 'Z')
#define IS_NUM(c)   (c >= '0' && c <= '9')


#define HIDDEN	1
#define BLINK	2

SerialDisplay14::SerialDisplay14(byte length, byte dataPin, byte clockPin, byte latchPin,
		byte pinA, byte pinB, byte pinC, byte pinD) :
	length(length), dataPin(dataPin), clockPin(clockPin), latchPin(latchPin), currentDisplay(0), blinkCycle(true)
{
	int i;
	pins[0] = pinA;
	pins[1] = pinB;
	pins[2] = pinC;
	pins[3] = pinD;
	attributes = (byte*)malloc(length);
	resetAttributes();
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
	byte c, index;
	byte attr;
	//    tempCounter++;
	for (int i = 3 - start; i < length; i += 4) {
		attr = attributes[length - i - 1];
		index = buffer[length - i - 1];
		glyph = font[index & 0x7f] & (index & 0x80 ? ~SEG_DOT : 0xffff);

		if (attr & HIDDEN || ((attr & BLINK) && blinkCycle)) {
			glyph = 0;
		}

		//glyph = font[index & 0x7f] & ~SEG_DOT; //& ~(index & 0x80 ? font[FONT_DOT] : 0);
		//glyph = ~SEG_DOT;// DEBUG
		shiftOut(dataPin, clockPin, MSBFIRST, glyph >> 8);
		shiftOut(dataPin, clockPin, MSBFIRST, glyph & 0xff);
	}
	
	digitalWrite(latchPin, HIGH);

	currentDisplay = start;
	digitalWrite(pins[currentDisplay], LOW);
}

void SerialDisplay14::write(const char* text, byte len) {
	byte dotsAndCommas = 0;
	byte glyphId, c, i;
	bool prevDot;
	
	// count dots and their impact
	prevDot = true;
	for (i = 0; i < len; i++) {
		c = text[i];
		if (c == '.' || c == ',') {
			if (!prevDot) {
				// there was a character before, so it can have the dot appended
				dotsAndCommas++;
			}
			prevDot = true;
		} else {
			prevDot = false;
		}
	}
	
	if (len - dotsAndCommas < length) {
		for (byte i = len - dotsAndCommas; i < length; i++) {
			buffer[i] = 0;
		}
	} else if (len - dotsAndCommas > length) {
		len = length + dotsAndCommas;
	}

	byte currentDots = 0;
	prevDot = true;
	for (i = 0; i < len; i++) {
		c = text[i];
		if ((c == '.' || c == ',') && !prevDot) {
			currentDots++;
			buffer[i - currentDots] = buffer[i - currentDots] | 0x80;
			prevDot = true;
			continue;
		} else if ((c == '.' || c == ',') && prevDot) {
			glyphId = 0x80;
			prevDot = true;
		} else {
			prevDot = false;
			if (IS_LCASE(c)) {
				glyphId = c - 'a' + 1;

			} else if (IS_UCASE(c)) {
				glyphId = c - 'A' + 1;
			} else if (IS_NUM(c)) {
				glyphId = c - '0' + FONT_NUMERIC;
			} else if (c == ' ') {
				glyphId = 0;
			} else if (c == '/') {
				// FIXME: use ASCII ordered symbols so translation will be easy!!!
				glyphId = 44;
			} else if (c == 0) {
				glyphId = FONT_TESTCHAR;
			} else {
				// default "missing character" glyphId?
				glyphId = 0;
			}
		}
		buffer[i - currentDots] = glyphId;
	}

	//    update();

}

void SerialDisplay14::resetAttributes() {
	for (byte i = 0; i < length; i++) {
		attributes[i] = 0;
	}
}

void SerialDisplay14::hide(byte start, byte len) {
	for (byte i = start; i < length && i < start + len; i++) {
		attributes[i] = attributes[i] | HIDDEN;
	}
}

void SerialDisplay14::show(byte start, byte len) {
	for (byte i = start; i < length && i < start + len; i++) {
		attributes[i] = attributes[i] & ~HIDDEN;
	}
}

void SerialDisplay14::blink(byte start, byte len) {
	for (byte i = start; i < length && i < start + len; i++) {
		attributes[i] = attributes[i] | BLINK;
	}
}

void SerialDisplay14::unblink(byte start, byte len) {
	for (byte i = start; i < length && i < start + len; i++) {
		attributes[i] = attributes[i] & ~BLINK;
	}
}



