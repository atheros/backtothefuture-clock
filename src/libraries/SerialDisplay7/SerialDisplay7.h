#ifndef __SERIALDISPLAY7_H
#define __SERIALDISPLAY7_H


#include <Arduino.h>

class SerialDisplay7 {
private:
	byte *buffer;
	byte *attributes;
	byte length;
	byte currentDisplay;
	byte dataPin, clockPin, latchPin, oddPin, evenPin;


public:
	SerialDisplay7(byte length, byte dataPin, byte clockPin, byte latchPin, byte oddPin, byte evenPin);
	
	void update();
	void write(const char* text, byte len);
	void resetAttributes();
	void hide(byte start, byte len);
	void show(byte start, byte len);
	void blink(byte start, byte len);
	void unblink(byte start, byte len);
	
};

#endif /* !__SERIALDISPLAY7_H */

