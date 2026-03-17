#include <bits/stdc++.h>
using namespace std;
int main(){
  ios_base::sync_with_stdio(false);
  cin.tie(NULL);
  cout<<"xau ki tu: ";
  char s[2][1001];
  for(int k=0;k<3;k++){
    if(!(cin>>s[0]>>s[1]))break;
    bitset<26>s1,s2;
    for(int i=0;s[0][i]!='\0';i++)s1.set(s[0][i]-'a');
    for(int i=0;s[1][i]!='\0';i++)s2.set(s[1][i]-'a');
    if(s1==s2){
      cout<<"YES\n";
    }else cout<<"NO\n";
  }
  return 0;
}
