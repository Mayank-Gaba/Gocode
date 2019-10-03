/* code to count the number of 1's and 0's in an binary of any number.*/
#include<stdio.h>
main()
{
	int number,count[2]={0},offset=0;
	printf("\n\t Enter any number : ");
	scanf("%d",&number);
	while(offset<sizeof(int)*8)
	{
		count[number&1]++;
		number=number>>1;
		offset++;
	}
	printf("\n\t Number of zeroes : %d",count[0]);
	printf("\n\t Number of ones : %d",count[1]);
}
