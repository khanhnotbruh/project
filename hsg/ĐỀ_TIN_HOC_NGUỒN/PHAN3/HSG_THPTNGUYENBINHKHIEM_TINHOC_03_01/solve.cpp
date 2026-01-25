#include <bits/stdc++.h>
using namespace std;
long long sum(long long x)
{
    long long s=0;
    while(x>0)
    {
        s+=x%10;
        x/=10;
    }
    return s;
}
int main()
{
    
 	freopen("solve.inp","r",stdin);
    freopen("solve.out","w",stdout);
	long long n;
    cin>>n;
    long long s;
    long long i=1000000000;
    for( s=1;s<=81;s++)
    {
        long long delta=s*s+4*n;
        long long k=sqrt(delta);
        if(k*k==delta)
        {
            if((-s+k)%2==0)
            {
                long long x=(-s+k)/2;
                if(sum(x)==s)
                i=min(i,x);
            }
        }
    }
    if(i!=1000000000) cout<<i;
    else cout<<"-1";
}
