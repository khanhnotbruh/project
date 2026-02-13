#include <bits/stdc++.h>

using namespace std;


int main(){
	freopen("olympic.inp", "r", stdin);
	freopen("olympic.out", "w", stdout);
	int n, m; cin >> n >> m;
	int x;
	
	int  v[100001] = {}, b[100001] = {}, d[100001] = {};
	for (int i = 1; i <= n; i++)		
	{					
		 cin >> x;
		v[i]=v[i-1] + (x==1?1:0);
		b[i]=b[i-1] + (x==2?1:0);
		d[i]=d[i-1] + (x==3?1:0);
	}
	for (int i = 0; i < m; i++){
		long long l, r; cin >> l >> r;
		cout << v[r] - v[l-1] << " " << b[r] - b[l-1] << " " << d[r] - d[l-1] << endl;
	}
	return 0;
}
