/* Code for conversion of integer form into binary form*/
#include<stdio.h>
main()
{
	int number,offset=sizeof(int)*8-1;
	printf("\n\t Enter any Number : ");
	scanf("%d",&number);
	printf("\n\tBinary of %d : ",number);
	while(offset>=0)
	{
		if((number>>offset)&1) printf("1");
		else printf("0");
		offset--;
	}
}
