#include<pic.h>
#include<htc.h>
#define _XTAL_FREQ 29e6
__CONFIG(0X3F3A);

void Rotation0() //0 Degree
{
	unsigned int i;
	for(i=0;i<50;i++)
	{
		PORTB = 0x01;
		__delay_us(800); 		// pulse of 800us
		PORTB = 0x00;
		__delay_us(19200);
	}
}
void Rotation90() //90 Degree
{
	unsigned int i;
	for(i=0;i<50;i++)
	{
		PORTB = 0x01;
		__delay_us(1500); 		// pulse of 1500us
		PORTB = 0x00;
		__delay_us(18500);
	}
}

void Rotation180() //180 Degree
{
	unsigned int i;
	for(i=0;i<50;i++)
	{
		PORTB = 0x01;
		__delay_us(2200); 		// pulse of 2200us
		PORTB = 0x00;
		__delay_us(17800);
	}		
}

void main()
{
	TRISB=0X00;
	PORTB=0X00;
	while(1)
	{
		Rotation0(); //0 Degree
		__delay_ms(1000);
		Rotation90(); //90 Degree
		__delay_ms(1000);
		Rotation180(); //180 Degree
		__delay_ms(1000);
	}
}