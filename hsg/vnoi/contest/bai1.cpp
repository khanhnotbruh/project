#include <bits/stdc++.h>
using namespace std;
auto _ = []() {
  ios_base::sync_with_stdio(false);
  cin.tie(NULL);
};

int main(){
  int q;
  cin>>q;
  for(int i=0;i<q;i++){
    int n,m,r,c;
    cin>>n>>m>>r>>c;
    int t=min(n-r+(r!=1?n-1:0),m-c+(c!=1?m-1:0));
    cout<<t<<'\n';
  }
  return 0;
}
