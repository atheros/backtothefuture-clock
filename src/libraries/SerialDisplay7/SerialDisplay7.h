#ifndef __SERIALDISPLAY7_H
#define __SERIALDISPLAY7_H


#include <Arduino.h>

class SerialDisplay7 {
private:
	byte *buffer;
	byte *leds;
	byte *attributes;
	byte length;
	byte currentDisplay;
	byte dataPin, clockPin, latchPin, oddPin, evenPin;
	byte ledBytes;

public:
	SerialDisplay7(byte length, byte dataPin, byte clockPin, byte latchPin, byte oddPin, byte evenPin, byte ledModules);
	
	void update();
	void write(const char* text, byte len);
	void resetAttributes();
	void hide(byte start, byte len);
	void show(byte start, byte len);
	void blink(byte start, byte len);
	void unblink(byte start, byte len);
	void setLED(int led, bool on);
};

#endif /* !__SERIALDISPLAY7_H */

