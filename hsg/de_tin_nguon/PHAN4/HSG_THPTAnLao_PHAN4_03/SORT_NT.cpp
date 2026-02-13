#include <bits/stdc++.h>
using namespace std;
ifstream fin("SORT_NT.INP");
ofstream fout("SORT_NT.OUT");
const int maxx = 100001;
int n; 
vector<int> prime(maxx, 1);
vector<vector<int> > a;
void sang() {
	prime[1] = false;
	for(int i = 2; i * i < maxx; i++) {
		if(prime[i]) {
			for(int j = i; j * i < maxx; j++)
				prime[j * i] = 0;
		} 
	}
}
long long sumprime(int n) {
	long long sum = 0;
	if(prime[n] == 1) sum = n;
	else {
		for(int i = 2; i * i <= n; i++) {
			while(n % i == 0) {
				sum += i;
				n /= i;
			}
		}
		if(prime[n] == 1) sum += n;
	}
	return sum;
}
int main() {
	fin >> n;
	sang();
	for(int i = 0; i < n; i++) {
		int res; fin >> res;
		vector<int> t;
		t.push_back(sumprime(res));
		t.push_back(res);
		a.push_back(t);
	}
	sort(a.begin(), a.end(), greater<vector<int> >());
	for(int i = 0; i < n; i++) {
		fout << a[i][1] << " ";	
	}
	return 0;
}