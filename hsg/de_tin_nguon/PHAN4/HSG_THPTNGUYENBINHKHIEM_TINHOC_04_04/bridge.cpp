#include <bits/stdc++.h>
#define forinc(i,a,b) for(int i=a;i<=b;i++)
using namespace std;
long long a[100001],s[100001];
int main()
{
    int n;
    freopen("bridge.inp","r",stdin);
    freopen("bridge.out","w",stdout);
    cin>>n;
    forinc(i,1,n) cin>>a[i];
    long long t=0;
    sort(a+1,a+1+n);
    s[1]=a[1];
    s[2]=a[2];
    s[3]=a[1]+a[2]+a[3];    
    forinc(i,4,n) s[i]=min(s[i-2]+a[1]+a[2]+a[2]+a[i],s[i-1]+a[i]+a[1]);
    cout<<s[n];
}
