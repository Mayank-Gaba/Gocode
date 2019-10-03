#include<iostream>
using namespace std;
main()
{
   int num=10;
   int& temp=num;
   int&& temp1 = num+20;
   cout<<"\n\ttemp : "<<temp;
   cout<<"\n\tnum  : "<<num;
   cout<<"\n\ttemp1: "<<temp1;
}
