#include <bits/stdc++.h>
#define forinc(i,a,b) for(int i=a;i<=b;i++)
using namespace std;
long long a[100000],b[100000],c[100000];
int main()
{
    freopen("cream.inp","r",stdin);
    freopen("cream.out","w",stdout); 
   long long n,kq=0,s=0;
    cin>>n;
    forinc(i,1,n) cin>>a[i];
    forinc(i,1,n) cin>>b[i];
    forinc(i,1,n) c[i]=a[i]-b[i];
    sort(c+1,c+n+1,greater<int>());
    forinc(i,1,n)
    {
        s+=c[i];
        if(s<0)
        {
            kq=i-1;
            break;
        }
        else kq=i;
    }
    cout<<kq;
}
