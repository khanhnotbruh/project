#include <bits/stdc++.h>
#define forinc(i,a,b) for(int i=a;i<=b;i++)
using namespace std;
int T,n,m,a[100001],b[100001];long long s=0;int kq;
long long sl1(int x)
{
    long long sum=0;
    forinc(i,1,n) sum+=x/a[i];
    return sum;
}
long long sl2(int x)
{
    long long sum=0;
    forinc(i,1,m) sum+=x/b[i];
    return sum;
}
int main()
{
    freopen("pottery.inp","r",stdin);
    freopen("pottery.out","w",stdout);
    cin >> T;
    cin>> n;
    forinc(i,1,n) cin>> a[i];
    cin>> m;
    forinc(i,1,m) cin>> b[i];
    int l=1;
    int r=T;int mid;
    while(l<=r)
    {
        mid=(l+r)/2;
        if (sl1(mid)<= sl2(T-mid))
        {
            kq=mid;s=sl1(mid);
            l=mid+1;
        }else r=mid-1;
    }
      cout << s;
}
