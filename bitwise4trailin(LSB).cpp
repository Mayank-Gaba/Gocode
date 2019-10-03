#include<stdio.h>
main()
{
	int number,offset=0;
	printf("\n\t Enter any number : ");
	scanf("%d",&number);
	if(number==0) printf("\n\t Number of zeros(Trail) : %d",sizeof(int)*8);
	else
	{
		while(offset<=sizeof(int)*8)
		{
			if((number>>offset)&1)break;
			offset++;
		}
		printf("\n\t Number of zeros(Trail) : %d",offset);
	}
}
