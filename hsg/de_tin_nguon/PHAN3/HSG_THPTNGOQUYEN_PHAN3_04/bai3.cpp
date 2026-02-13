#include<bits/stdc++.h>
using namespace std;
int a[1000005];
int main()
{
	ios_base::sync_with_stdio(false);
	cin.tie(0); cout.tie(0);
	freopen("bai3.inp","r",stdin);
	freopen("bai3.out","w",stdout);
	int n;
	cin>>n;
	int max=0;
	int dem=1;
	for(int i=1;i<=n;i++) cin>>a[i];
	for(int i=1;i<n;i++)
	  {
	  	if(a[i]==a[i+1]) {
	  		dem++;
	  		if(dem>max) max=dem;
		  }
	  	else dem=1;
	  }
	cout<<max;
}
