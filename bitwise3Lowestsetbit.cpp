/*Code gives the lowest position of set Bit (means gives the first location where 
Bit is 1).*/
#include<stdio.h>
main()
{
	int number,offset=0;
	printf("\n\t Enter any Number : ");
	scanf("%d",&number);
	if(number==0) printf("\n\tInvalid Input");
	else
	{
		while(offset<sizeof(int)*8)
		{
			if((number>>offset)&1)break;
			offset++;
		}
		printf("\n\t Lowest set of %d : %d",number,offset+1);
	}
}
