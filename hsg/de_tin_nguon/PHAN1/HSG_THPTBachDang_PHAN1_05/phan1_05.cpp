#include <bits/stdc++.h>
using namespace std;

int main()
{
    //Attach files
    freopen("FloydIn.txt", "r", stdin);
    freopen("FloydOut.txt", "w", stdout);

    //Main program
    long long int n; cin >> n;
    cout << (n + 1) * n / 2;
    return 0;
}