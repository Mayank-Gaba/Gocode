#include<iostream>
using namespace std;
template <typename Type,int Size>
void arrayRead(Type num[])
{
    for(int offset=0;offset<Size;offset++)
	{
	   cout<<"\n\t"<<num[offset];
	}
}
int main()
{
    int   num[10] = {1,2,3,4,5,6,7,8,9,10};
    float num1[3] = {1.2f,2.3f,3.4f};

	arrayRead<int,10>(num);
	arrayRead<float,3>(num1);
}