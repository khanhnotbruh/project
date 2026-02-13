#include<bits/stdc++.h>
using namespace std;
#define input "bai2.inp"
#define output "bai2.out"
int tinh(long long n)
{
    int tong=0;
    while(n>0)
    {
        tong=tong+n%10;
        n=n/10;
    }
    return tong;
}
int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(0);cout.tie(0);
    freopen(input,"r",stdin);
    freopen(output,"w",stdout);
    long long n,x=0,s;
    cin>>n;
    int i,t=1,ans=-1;
    for(t=1;t<=162;t++)
    {
        long long k=t*t+n*4;
        if(floor(sqrt(k))==sqrt(k))
        {
            x=floor(sqrt(k))-t;
            if((x%2==0)&&(t==tinh(x/2)))
            {
                ans=x/2;
                break;
            }
        }
    }
    cout<<ans;
}
