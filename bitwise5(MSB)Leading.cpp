/*counting zeroes from MSB till first one appears*/
#include<stdio.h>
main()
{
	int number,offset=sizeof(int)*8-1;
	printf("\n\t Enter any number : ");
	scanf("%d",&number);
	if(number==0) printf("\n\t Number of zeros(Leading) : %d",sizeof(int)*8);
	else
	{
		while(offset>=0)
		{
			if((number>>offset)&1)break;
			offset--;
		}
		printf("\n\t Number of zeros(Leading) : %d",sizeof(int)*8-offset-1);
	}
}
