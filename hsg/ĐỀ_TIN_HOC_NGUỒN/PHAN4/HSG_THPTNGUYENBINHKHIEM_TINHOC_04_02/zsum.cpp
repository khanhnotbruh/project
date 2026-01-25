#include <bits/stdc++.h>
#define forinc(i,a,b) for(int i=a;i<=b;i++)
using namespace std;
long long a[1001],b[1001],c[1001],s[1000001];
int k;
bool kt(int x)
{
    int l=1,r=k,mid;
    while(l<=r)
    {
        mid=(l+r)/2;
        if(s[mid]==x) return true;
        else if(s[mid]>x) r=mid-1;
        else l=mid+1;
    }
    return false;
}
int main()
{
     freopen("zsum.inp","r",stdin);
    freopen("zsum.out","w",stdout);
	forinc(z,1,2){
        int m,n,p;int ok=0;
    cin>>m>>n>>p;
    k=0;
        forinc(i,1,m) cin>>a[i];
    forinc(i,1,n) cin>>b[i];
    forinc(i,1,p) cin>>c[i];
    forinc(i,1,m)
    {
        forinc(j,1,n) s[++k]=a[i]+b[j];
    }
    sort(s+1,s+1+k);
    forinc(i,1,p)
    {

        if(kt(-c[i])) {ok=1;break;}
    }
if(ok==1) cout<<1;
    else cout<<0;

}

}
