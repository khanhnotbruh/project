#include <bits/stdc++.h>

int main()
{
    //Attach files
    freopen("Input.txt", "r", stdin);
    freopen("Output.txt", "w", stdout);

    //Main program
    std::vector<long long int> res;
    std::string s, num; std::cin >> s; s += 'a';
    for (int i = 0; i < s.size(); i++) {
        if (s[i] >= '0' && s[i] <= '9') 
            num += s[i];
        if (s[i] >= '0' && s[i] <= '9' && s[i + 1] >= 'a' && s[i + 1] <= 'z') {
            std::stringstream Convert(num);
            long long x = 0;
            Convert >> x;
            res.push_back(x);
            num = "";
        }
    }
    sort(res.begin(), res.end()); int j = 0;
    for (int i = 0; i < s.size() - 1; i++) {
        if (s[i] >= 'a' && s[i] <= 'z') 
            std::cout << s[i];
        if (s[i] >= '0' && s[i] <= '9' && s[i + 1] >= 'a' && s[i + 1] <= 'z') {
            std::cout << res[j];
            j++;
        }
    }
    return 0;
}