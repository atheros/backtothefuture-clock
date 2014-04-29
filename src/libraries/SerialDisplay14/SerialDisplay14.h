#ifndef __SERIALDISPLAY14_H
#define __SERIALDISPLAY14_H

#include <Arduino.h>

class SerialDisplay14 {
private:
	byte *buffer;
	byte length;
	byte *attributes;
	byte currentDisplay;
	byte dataPin, clockPin, latchPin, oddPin, evenPin;
	byte pins[4];
	
	bool blinkCycle;

public:
	SerialDisplay14(byte length, byte dataPin, byte clockPin, byte latchPin,
			byte pinA, byte pinB, byte pinC, byte pinD);

	void update();

	void write(const char* text, byte len);
	void resetAttributes();
	void hide(byte start, byte len);
	void show(byte start, byte len);
	void blink(byte start, byte len);
	void unblink(byte start, byte len);
	
	void updateBlink(bool v) { blinkCycle = v; };
};


#endif /* !__SERIALDISPLAY14_H */

