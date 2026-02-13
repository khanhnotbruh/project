#include<bits/stdc++.h>
using namespace std;
int main()
{
	map<string,int> mp;
	int n;
	string s;
	ios_base::sync_with_stdio(false);
	cin.tie(0); cout.tie(0);
	freopen("bai2.inp","r",stdin);
	freopen("bai2.out","w",stdout);
	cin>>n;
	getline(cin,s);
	for (int i=1;i<=n;i++)
	{
		getline(cin,s);
		mp[s]++;
	}
	cout<<mp.size()<<endl;
	for ( auto x: mp)
	{
		cout<<x.first<<' '<<x.second<<endl;
	}
}
