#include <bits/stdc++.h>
using namespace std;
#define  forinc(i,a,b)  for(int i=a;i<=b;i++)
int b[25001],a[25001],n, x,y;
int main()
{
    freopen("sandcas.inp","r",stdin);
    freopen("sandcas.out","w",stdout);
    cin>>n>>x>>y;
    forinc(i,1,n) cin>>a[i]>>b[i];
    sort(a+1,a+n+1);
    sort(b+1,b+n+1);
    long long t=0;
    forinc(i,1,n)
    {
        if (a[i]<b[i]) t+=(b[i]-a[i])*x;
        else t+=(a[i]-b[i])*y;
    }
    cout<<t;
}
