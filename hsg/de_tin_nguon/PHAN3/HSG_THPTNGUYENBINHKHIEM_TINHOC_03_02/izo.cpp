#include <bits/stdc++.h>
#define forinc(i,a,b) for(int i=a;i<=b;i++)
using namespace std;
long long a[100000],b[100000];
int main()
{
     freopen("izo.inp","r",stdin);
    freopen("izo.out","w",stdout);
	int n;
    long long s=0;
    cin>>n;
    forinc(i,1,n) {cin>>a[i]; s+=a[i];};
    sort(a+1,a+n+1);
    int j=1;
    /*forinc(i,1,n/2)
    {
        b[j]=a[i];
        b[j+1]=a[n-i+1];
        j+=2;
    }*/
    long long h=0;
    forinc(i,1,n/2)
    {
        s+=max(h,a[n-i+1]-a[i]);
    }
    cout<<s;
}
