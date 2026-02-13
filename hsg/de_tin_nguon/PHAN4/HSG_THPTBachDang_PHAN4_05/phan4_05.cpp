#include <bits/stdc++.h>

int main()
{
    //Attach files
    freopen("Input.txt", "r", stdin);
    freopen("Output.txt", "w", stdout);

    //Main program
    std::vector<long long int> res; int maxx = 0;
    std::string s, num; std::cin >> s; s += 'a';
    for (int i = 0, temp = 0; i < s.size(); i++) {
        if (s[i] >= '0' && s[i] <= '9') 
            num += s[i];
        if (s[i] >= '0' && s[i] <= '9' && s[i + 1] >= 'a' && s[i + 1] <= 'z') {
            std::reverse(num.begin(), num.end());
            std::stringstream Convert(num);
            Convert >> temp;
            res.push_back(temp);
            maxx = (maxx < temp) ? temp : maxx; 
            num = "";
        }
    }
    std::cout << res.size() << "\n" << maxx;
    return 0;
}