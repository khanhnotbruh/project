#include <bits/stdc++.h>
using namespace std;
long long a[1001];
int main()
{
    long long n;
    freopen("uocso.inp","r",stdin);
    freopen("uocso.out","w",stdout);
    cin>>n;

    for(int i=1;i<=n;i++)
    {
        int dem=0;
        cin>>a[i];
        for(int j=1;j<=a[i]/2;j++)
        {
            if((a[i]%j)==0) dem++;
        }
        cout<<dem+1<<"\n";
    }
}
