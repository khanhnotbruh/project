#include <bits/stdc++.h>
#define forinc(i,a,b) for(int i=a;i<=b;i++)
using namespace std;
long long s;
int main()
{
     freopen("bus.inp","r",stdin);
    freopen("bus.out","w",stdout);
	int n,d,t;
    cin>>n>>d>>t;
 
    int dem=1;
    forinc(i,1,n)
    {
	cin>>s
       if(<=t) cout<<1<<" ";
        else cout<<ceil(1.0*(s-t)/d)+1<<" ";
    }
}

