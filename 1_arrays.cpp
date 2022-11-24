#include<iostream>
using namespace std;
int main()
{
    int n=5;
    int A[n]={1,2,3,4,5}; 
    //working in this compiler
    // A[0]=1;
    // A[1]=2;
    // A[2]=3;
    // A[3]=4;
    // A[4]=5;

    cout<<"Printing..."<<endl;
    cout<<sizeof(A)<<endl;
    cout<<"SIZE OF INT : "<<sizeof(A)/n<<endl;

    for(int n:A)
    {
        cout<<n<<endl;
    }
   
return 0;
}