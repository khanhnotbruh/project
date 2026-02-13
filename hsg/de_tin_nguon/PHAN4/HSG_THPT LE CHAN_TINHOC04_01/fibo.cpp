#include<bits/stdc++.h>
using namespace std;
int a,b;
ifstream fi;
ofstream fo;
void doc()
{
 fi.open("fibo.inp");
 cin>>a>>b;
 fi.close();
}
int daoso(int x)
{
    int n=0;
    while(x>0)
    {
        n=n*10+x%10;
        x=x/10;
    }
    return n;
}
int UCLN(int a, int b)
{
    int du;
    if(a<b)
    {
        int tg=a;
            a=b;
            b=tg;
    }
    du=a%b;
    while(du!=0)
    {
        a=b;
        b=du;
        du=a%b;
    }
    return b;
}
int main()
{
    doc();
    fo.open("fibo.out");
    int i,dem=0;
    for(i=a;i<=b;i++)
        if(UCLN(i,daoso(i))==1)
        {
            dem++;
        }

cout<<dem;
fo.close();
}