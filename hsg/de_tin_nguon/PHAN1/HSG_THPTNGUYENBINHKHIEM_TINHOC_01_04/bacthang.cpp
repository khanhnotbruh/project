#include <bits/stdc++.h>
#define forinc(i,a,b) for(int i=a;i<=b;i++)
using namespace std;
long long a;
bool ktsbt(long long x)
{
    if(x/10==0) return false;
    while(x/10!=0)
    {
        int k=x%10;
        x/=10;
        if(k<=x%10) return false;
    }
    return true;
}
int main()
{
    int n;
    cin>>n;
     freopen("bacthang.inp","r",stdin);
    freopen("bacthang.out","w",stdout);
    int dem=0;
    forinc(i,1,n)
    {
	cin >>a;
        if(ktsbt(a) dem++;
    }
    cout<<dem;
}
