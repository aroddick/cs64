#include "stdio.h"
#include "stdlib.h"
#include "RandomCode.h"

int multiplyBy8(int v)
{
	v = v << 3;
	return v;
}

int setBit6to1(int v)
{
	v = v | 64;
	return v;
}

int setBit3to0(int v)
{
	v = v & ~8;
	return v;
}
	
int flipBit5(int v)
{
	v = v ^ 32;
	return v;
}
	
int ifBit7is0(int v)
{
	v = v >> 7;
	if (v & 1 == 1) {
		return 0;
	}
	return 1;
}

int ifBit3is1(int v)
{
	// check to see if bit 3 is a 1 - return 1 if true, 0 if false
	v = v >> 3;
	if (v & 1 == 1) {
		return 1;
	}
	return 0;
}

int unsignedBits0through5(int v)
{
	v = v & 63;
	return v;
}

int unsignedBits6through9(int v)
{
	// return the unsigned value in bits 6 through 9
	v = v >> 6;
	v = v & 15;
	return v;
}

int signedBits0through5(int v)
{
	// return the signed value in bits 0 through 5
	if ((v >> 5) & 1 == 1) {
		return (v | ~(63));
	}
	return (v & 63);
	
}

int signedBits6through9(int v)
{
	// return the signed value in bits 6 through 9
	v = v >> 6;
	if ((v >> 3) & 1 == 1) {
		return (v | ~15);
	}
	return (v & 15);
}

int setBits4through9(int v, int setValue)
{
	// set bits 4 through 9 in v to become setValue
	setValue = setValue << 4;
	v = v & (~(63 << 4));
	v = v | setValue;
	return v;
}




