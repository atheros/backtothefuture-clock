#include "SerialDisplay7.h"


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

// characters
static byte segment_char[12] = {~CH_0, ~CH_1, ~CH_2, ~CH_3, ~CH_4, ~CH_5, ~CH_6, ~CH_7, ~CH_8, ~CH_9, ~SEG_P, 0xff};
// all segments
static byte segments[8] = {SEG_A, SEG_B, SEG_C, SEG_D, SEG_E, SEG_F, SEG_G, SEG_P};


#define HIDDEN	1
#define BLINK	2


SerialDisplay7::SerialDisplay7(byte length, byte dataPin, byte clockPin, byte latchPin, byte oddPin, byte evenPin)
: length(length), dataPin(dataPin), clockPin(clockPin), latchPin(latchPin), oddPin(oddPin), evenPin(evenPin), currentDisplay(0) {
	buffer = (byte*)malloc(length);
	attributes = (byte*)malloc(length);
	write(NULL, 0);
	digitalWrite(oddPin, HIGH);
	digitalWrite(evenPin, HIGH);
}

void SerialDisplay7::update() {
	byte start;
	
	// hide display
	if (currentDisplay == 0) {
		start = 1;
		digitalWrite(evenPin, HIGH);
	} else {
		start = 0;
		digitalWrite(oddPin, HIGH);
	}

	// begin writing
	digitalWrite(latchPin, LOW);
	byte c, attr;
	for (byte i = start; i < length; i += 2) {
		// get character to write and respect attributes
		attr = attributes[length - i - 1];
		if (attr & HIDDEN) {
			// character is hidden
			c = segment_char[11];
		} else {
			// normal character
			c = segment_char[buffer[length - i - 1]];
		}
		shiftOut(dataPin, clockPin, MSBFIRST, c);
	}
	// finish writing
	digitalWrite(latchPin, HIGH);

	// show display
	if (currentDisplay == 0) {
		currentDisplay = 1;
		digitalWrite(oddPin, LOW);
	} else {
		currentDisplay = 0;
		digitalWrite(evenPin, LOW);
	}
}

void SerialDisplay7::write(const char* text, byte len) {
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
}

void SerialDisplay7::resetAttributes() {
	for (byte i = 0; i < length; i++) {
		attributes[i] = 0;
	}
}

void SerialDisplay7::hide(byte start, byte len) {
	for (byte i = start; i < length && i < start + len; i++) {
		attributes[i] = attributes[i] | HIDDEN;
	}
}

void SerialDisplay7::show(byte start, byte len) {
	for (byte i = start; i < length && i < start + len; i++) {
		attributes[i] = attributes[i] & ~HIDDEN;
	}
}

void SerialDisplay7::blink(byte start, byte len) {
	for (byte i = start; i < length && i < start + len; i++) {
		attributes[i] = attributes[i] | BLINK;
	}
}

void SerialDisplay7::unblink(byte start, byte len) {
	for (byte i = start; i < length && i < start + len; i++) {
		attributes[i] = attributes[i] & ~BLINK;
	}
}




