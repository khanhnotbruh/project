#include<bits/stdc++.h>

using namespace std;
typedef long long ll;
const int N = 1234567;
void solve(int n){
	int k = sqrt(n);
	int v1=1,v2=n;
	for(int i=1;i<=k;i++){
		if(n % i==0){
			int x =sqrt(n/i);
			if(x*x == n/i){
				cout<< x << " "<< i <<endl;
				return;
			}
			x = sqrt(i);
			if(x*x == i){
				v1 = x;
				v2 = n/i;
			}

		}
	}
	cout << v1 << " "<< v2 << endl;
}
int main(){
    freopen("Bai2.inp","r",stdin);
    freopen("BAI2.out","w",stdout);
	int n;
	cin>>n;
	int tm;
	while(n--){
		cin>>tm;
		solve(tm);
	}
}


