#include <bits/stdc++.h>
#define forinc(i,a,b) for(int i=a;i<=b;i++)
using namespace std;
long long a[996];
int main()
{
    long long kq=0,n,s=0;
     freopen("express.inp","r",stdin);
    freopen("express.out","w",stdout);
    cin>>n;
    forinc(i,1,n)
    {
        cin>>a[i];
        s+=a[i];
    }
    forinc(i,1,n-2)
    {
        forinc(j,i+1,n-1)
        {
            if(j==i+1) kq=max(kq,s-a[i]-a[i+1]-a[i+2]+a[i]*a[i+1]*a[i+2]);
            else kq=max(kq,s-a[i]-a[i+1]-a[j]-a[j+1]+a[i]*a[i+1]+a[j]*a[j+1]);
        }
    }
    cout<<kq;
}
