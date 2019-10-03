/*Code gives the highest position of set Bit (means gives the last location where
Bit is 1).*/
#include<stdio.h>
main()
{
	int number,offset=sizeof(int)*8-1;
	printf("\n\t Enterny Number : ");
	scanf("%d",&number);
	if(number==0) printf("\n\tInvalid Input");
	else
	{
		while(offset>0)
		{
			if((number>>offset) & 1)break;
			offset--;
		}
		printf("\n\tHighest set of %d : %d",number,offset+1);
	}
}
	



	
