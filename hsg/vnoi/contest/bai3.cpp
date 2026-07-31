#include <bits/stdc++.h>
using namespace std;
auto _ = []() {
  ios_base::sync_with_stdio(false);
  cin.tie(NULL);
};

int main(){
  int q;
  cin>>q;
  for(;q--;){
    int n,k,s;
    cin>>n>>k>>s;
    vector<int> quan(n);
    for(int i=0;i<n;i++){
      cin>>quan[i];
    }
    //greedy
    int pre=0,ans=0,c=0;
    for(int i:quan){
      if(pre+i<s){
        pre+=i;
        if(c>n/k+n&1){
          c=0;
          ans++;
          pre=i;
        }
        c++;
      }
      else{
        ans++;
        pre=i;
      }
    }
    cout<<ans<<'\n';
  }
  return 0;
}
