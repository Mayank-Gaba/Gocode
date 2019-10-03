#include<iostream>
#define factor 2
using namespace std;
long stringToInteger(char name[]);
int main()
{
      char* name;
      long int value;
      int length,offset=1;
      char ch;

      cout<<"\n\t Enter the string : ";

      ch = fgetc(stdin);

      if((ch>=65&&ch<=92)||(ch>=97&&ch<=122))
      {
          length = stdin->_cnt;
          name = new char[length+1];
          name[0] = ch;

          while((ch=fgetc(stdin))!='\n')
          {
            if((ch>=65&&ch<=92)||(ch>=97&&ch<=122))
            {
              name[offset] = ch;
              offset++;
            }
            else
            {
              cout<<"\n\t invalid character at position"<<offset+1;
              cout<<"\n\t character will be skipped";
              continue;
            }
          }
        name[offset] = '\0';
        value  = stringToInteger(name);
        cout<<"\n\t The integer value for the string is :"<<value;
      }
      else
      {
          cout<<"\n\t Invalid first character ....Enter again";
      }
      return 0;
}
long stringToInteger(char name[])
{
    long int sum = 0;
    long int x = 1;

    for(int i=0;name[i]!='\0';i++)
    {
       sum = sum + name[i]*x;
       x = x*factor;
    }

    return(sum);
}
