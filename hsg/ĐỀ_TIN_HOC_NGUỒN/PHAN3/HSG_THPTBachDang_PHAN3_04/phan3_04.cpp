#include <bits/stdc++.h>
using namespace std;

long long int sumSquare(int n) {
    int Res = 0;
    while (n > 0) {
        Res += (n % 10) * (n % 10);
        n /= 10;
    } 
    return Res;
}

bool HN(int n) {
    bool kt = false;
    unordered_map<int, int> mp;
    mp[n]++; int temp = 0;
    while (!kt) {
        if (sumSquare(n) == 1)
            return true;
        if (mp.find(sumSquare(n)) != mp.end())
            return false;
        n = sumSquare(n);
        mp[n]++;
    }
}

int main()
{
    //Attach files
    freopen("HappyIn.txt", "r", stdin);
    freopen("HappyOut.txt", "w", stdout);

    //Main program
    int n, Temp; scanf("%d", &n);
    for (int i = 0; i < n; ++i) {
        scanf("%d", &Temp);
        if (HN(Temp)) cout << Temp << " ";
    }
    return 0;
}