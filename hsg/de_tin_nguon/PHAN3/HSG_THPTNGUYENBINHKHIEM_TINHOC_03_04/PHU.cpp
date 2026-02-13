#include <bits/stdc++.h>
#define forinc(i,a,b) for(int i=a;i<=b;i++)
using namespace std;

int main()
{
    freopen("phu.inp","r",stdin);
    freopen("phu.out","w",stdout);
    int n;
    cin>>n;
    long long x[n],y[n],a[n];
    forinc(i,1,n) {cin>>x[i]>>a[i]; y[i]=a[i]+x[i];}
    forinc(i,1,n-1)
    {
        forinc(j,i+1,n)
        {
            if(x[i]>x[j])
            {
                swap(x[i],x[j]);
                swap(y[i],y[j]);
            }
            else if(x[i]==x[j])
            {
                if(y[i]>y[j])
                    swap(y[i],y[j]);
            }
        }
    }
    long long d=0,ok=0;
    //forinc(i,1,n) cout<<x[i]<<" "<<y[i]<<"\n";
   // cout<<"\n";
    forinc(i,1,n-1)
    {
        if(y[i]<x[i+1]) d+=y[i]-x[i];
        else
        {
            if(y[i]<y[i+1]) x[i+1]=x[i];
             else {x[i+1]=x[i]; y[i+1]=y[i];}
        }
    }
   d+=y[n]-x[n];
    cout<<d;
}
