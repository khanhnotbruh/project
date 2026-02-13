#include<bits/stdc++.h>
#define ll long long
using namespace std;
ifstream fi("PHANTICH.INP");
ofstream fo("PHANTICH.OUT");
ll res = 0;
int n, m, a[100];
void dq(int i, int m) {
	if(m == 0) res++;
	for(int j = i; j <= n; j++)
		dq(j + 1, m - a[j]);
}
int main() {	
	fi >> n >> m;
	for(int i = 1; i <= n; i++) 
		fi >> a[i];
	dq(1, m);	
	if(m == 0)	res--;
	fo << res;
}
