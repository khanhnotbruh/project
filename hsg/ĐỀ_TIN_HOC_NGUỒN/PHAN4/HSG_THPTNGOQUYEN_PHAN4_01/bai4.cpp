#include<bits/stdc++.h>
using namespace std;
int b[1000007];
int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(0);
    cout.tie(0);
    freopen("bai4.inp","r",stdin);
    freopen("bai4.out","w",stdout);
    for (int i=0; i<=1000000; i++) b[i]=0;
    int n,x;
    cin>>n;
    for(int i=1;i<=n;i++)
    {
        cin>>x;
        b[x]++;
    }
    int max=INT_MIN;
    for(int i=1;i<=1000000;i++)
    {
        if(b[i]>=max) max=b[i];
    }
    cout<<max;
}
