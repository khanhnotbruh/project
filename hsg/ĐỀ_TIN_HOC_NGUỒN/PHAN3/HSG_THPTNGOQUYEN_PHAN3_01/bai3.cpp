#include<bits/stdc++.h>
using namespace std;
int snt(int a)
{
    if (a<=1) return 0;
    for(int i=2;i<=sqrt(a);i++)
    {
        if(a%i==0) return 0;
    }
    return 1;
}
int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(0);
    cout.tie(0);
    freopen("bai3.inp","r",stdin);
    freopen("bai3.out","w",stdout);
    int a,b;
    cin>>a>>b;
    int dem=0;
    for(int i=a;i<=b;i++)
    {
        if (snt(i)) dem++;
    }
    cout<<dem;
}
