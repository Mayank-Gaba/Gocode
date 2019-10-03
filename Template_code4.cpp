Templates codes 
// NOTE : No Automatic type conversion is allowed by template //
#include<iostream>
using namespace std;
template <typename Type>

    //  function defination //
	
Type const& big_num(Type const&  f_number,Type const& s_number)
{   
   cout<<"\n\t hello";
   cout<<"\n\t sizeof(f_number) : "<<sizeof(f_number);
   if(f_number<=s_number)return(s_number);
   else return(f_number);
}
int main()
{
	int temp;
	
	temp = big_num(12,6.7);
	temp = big_num(static_cast<double>(5),6.5); // at compilation time cast changes 5->5.0
	temp = big_num<double>(5,6.5);
	
	cout<<"\n\t temp : "<<temp;
	
}
