#include<bits/stdc++.h>
using namespace std;
typedef unsigned long int usl;
int main()
{
    vector<vector<int> > arr;
    unsigned rows=6,cols=6;
    unsigned i,j=0;

    for(i=0;i<rows;i++)
    {
        vector<int> b;
        int temp;

        for(j=0;j<cols;j++)
        {
            cin>>temp;
            b.push_back(temp);
        }

        arr.push_back(b);
    }

    int largest_sum = 0;

    for(i=0;i<rows-2;i++)
    {
        int tempsum;

        for(j=0;j<cols-2;j++)
        {
            tempsum = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] +arr[i+2][j+2];
        }

        if(tempsum>largest_sum)largest_sum = tempsum;
    }

    cout<<largest_sum<<endl;




}
