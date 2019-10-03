/* Code to swap 2 numbers using bitwise operators*/
#include<stdio.h>
main()
{
	int number1,number2;
	printf("\n\t Enter number1 : ");
	scanf("%d",&number1);
	printf("\n\t Enter number2 : ");
	scanf("%d",&number2);
	printf("\n\n\t Before Swapping : ");
	printf("\n\t Number1 : %d",number1);
	printf("\n\t Number2 : %d",number2);
	number1 ^= number2;
	number2 ^= number1;
	number1 ^= number2;
	printf("\n\n\t After Swapping : ");
	printf("\n\t Number1 : %d",number1);
	printf("\n\t Number2 : %d",number2);
}
