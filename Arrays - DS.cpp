#include<bits/stdc++.h>
using namespace std;
int main()
{
    int size;

    cin>>size;

    vector<int> arr;

    int j;
    int i;

    for(i=0;i<size;i++)
    {
        cin>>j;
        arr.push_back(j);
    }

    j = size - 1;

    for(i=0;i<j;i++,j--)
    {
         swap(arr[i],arr[j]);
    }


    for(i=0;i<size;i++)
    {
        cout<<arr[i]<<" ";
    }







}
