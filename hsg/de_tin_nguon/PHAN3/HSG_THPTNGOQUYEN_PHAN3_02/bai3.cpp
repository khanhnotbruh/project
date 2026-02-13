#include<bits/stdc++.h>
using namespace std;
int a[1000005];
int main()
{
	ios_base::sync_with_stdio(false);
	cin.tie(0); cout.tie(0);
	freopen("bai3.inp","r",stdin);
	freopen("bai3.out","w",stdout);
	int n,t,k;
	cin>>n;
	for(int i=1;i<=n;i++) cin>>a[i];
	for(int i=1;i<=n;i++)
	  if(sqrt(a[i])==floor(sqrt(a[i])))
	  {
		t=sqrt(a[i]);
		cout<<t<<" "<<t<<endl;
      }
      else
	  {
      	t=floor(sqrt(a[i]));
      	cout<<t<<" "<<t+1<<endl;
	  }
}
