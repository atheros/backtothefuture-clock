#ifndef __SERIALDISPLAY14_H
#define __SERIALDISPLAY14_H

#include <Arduino.h>

class SerialDisplay14 {
private:
	byte *buffer;
	byte length;
	byte currentDisplay;
	byte dataPin, clockPin, latchPin, oddPin, evenPin;
	byte pins[4];

public:
	SerialDisplay14(byte length, byte dataPin, byte clockPin, byte latchPin,
			byte pinA, byte pinB, byte pinC, byte pinD);

	void update();

	void write(const char* text, byte len);
};


#endif /* !__SERIALDISPLAY14_H */

