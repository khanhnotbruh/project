#include <bits/stdc++.h>
using namespace std;
int main(){
    freopen("nhiphan.inp","r",stdin);
    freopen("nhiphan.out","w",stdout);
    int k,res = 0; cin >> k;
    string s; cin >> s;
    for (int i = k ; i <= s.size(); ++i) {
        for (int j = 0; j + i <= s.size(); ++j){
        string temp = s.substr(j,i);
        if (temp.size() != 0) res += count(temp.begin(),temp.end(),'1') == k); 
        }
    }
    cout << res;
    return 0;
}
