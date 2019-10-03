/* Toggling of bit(One at a time)*/
#include<stdio.h>
#include<conio.h>
main()
{
	int number,toggleBit;
	printf("\n\t Enter any Number : ");
	scanf("%d",&number);
	printf("\n\t Enter bit which u want to toggle(1-32) : ");
	scanf("%d",&toggleBit);
	if(toggleBit>0&&toggleBit<33)
	{
		number=number^(1<<(toggleBit-1));
		printf("\n\t Your Number after toggling %d bit : %d",toggleBit,number);
	}
	else printf("\n\t Invalid Input");
}
