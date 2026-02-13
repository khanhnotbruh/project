#include <bits/stdc++.h>
using namespace std;

int main()
{
    //Attach files
    freopen("BAI3.INP", "r", stdin);
    freopen("BAI3.OUT", "w", stdout);

    //Main program
    std::string s; cin >> s; 
    int a[s.size() + 1], b[s.size() + 1];
    int maxLenC = 0, maxLen = 0, Damn = 1;
    a[0] = 0, b[0] = 0; 
    for (int i = 1; i < s.size(); i++) {
        if (s[i] == s[i - 1])
            Damn++;
        if (s[i] != s[i + 1]) {
            maxLen = max(maxLen, Damn);
            Damn = 1;
        }
    }
    maxLen = max(maxLen, Damn); Damn = 0;
    for (int i = 0; i < s.size(); i++) {
        Damn++;
        if (s[i] != s[i + 1] && s[i] != s[i + 2] && s[i] == s[i - 1]) {
            maxLenC = max(maxLenC, Damn);
            Damn = 0;
        }
    }
    maxLenC = max(Damn, maxLenC);
    cout << maxLen << "\n" << maxLenC;
    return 0;
}