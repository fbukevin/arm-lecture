#include <stdio.h>

int main(void)
{
	int a;
	int *x;
	a = 8;

	x = &a;
	printf("The address of a is 0x%x\n",x);
	return 0;
}
