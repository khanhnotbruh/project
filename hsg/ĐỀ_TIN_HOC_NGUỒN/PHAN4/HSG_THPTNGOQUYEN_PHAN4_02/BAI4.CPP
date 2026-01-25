#include<bits/stdc++.h>
#define k 1000000007
using namespace std;
long long chiadu(int x, int a)
{
    long long t=x%k;
    for (int i=2; i<=a; i++) t=((x%k)*t)%k;
    return t;
}

long long tong;
int main()
{
    ios_base::sync_with_stdio(0);
    cin.tie(0); cout.tie(0);
    freopen("bai4.inp","r",stdin);
    freopen("bai4.out","w",stdout);
    int m,n,p,q;
    cin>>m>>n>>p>>q;
    tong=(chiadu(1,m)+chiadu(2,n)+chiadu(3,p)+chiadu(4,q))%k;
    cout<<tong<<endl;
}
