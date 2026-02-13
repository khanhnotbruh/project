#include <bits/stdc++.h>
using namespace std;

int main()
{
    //Attach files
    freopen("BAI2.INP", "r", stdin);
    freopen("BAI2.OUT", "w", stdout);

    //Main program
    char a; string s; cin >> a >> s;
    std::map<int, int> mp;
    for (int i = 0; i < s.size(); i++)
    {
        if (a == s[i]) cout << i + 1 << "\n";
        mp[s[i]]++;
    }
    if (mp.find(a) == mp.end()) cout << 0;
    return 0;
}