#include <bits/stdc++.h>
#define forinc(i,a,b) for(int i=a;i<=b;i++)
using namespace std;
long long s[500001],T[500001],p[500001];
long long m,n;
long long tim(long long t)
{
    memset(s,0,sizeof(s));
    forinc(i,1,m)
    {
        if(t>=T[i]) s[i]=1+(t-T[i])/p[i];
    }
    sort(s+1,s+m+1,greater<int>());
     long long g=0;
    forinc(i,1,n)
    {
        g+=s[i];
    }
    return g;
}
int main()
{
    long long k;
    cin>>m>>n>>k;
    forinc(i,1,m) cin>>T[i];
    forinc(i,1,m) cin>>p[i];
    long long l=1,r=50e15,mid;
    long long res=0;
    while(l<=r)
    {
        mid=(l+r)/2;

        if(tim(mid)>=k)
        {
            res=mid;
            r=mid-1;
        }
        else l=mid +1;

    }
    cout<<res;
}

