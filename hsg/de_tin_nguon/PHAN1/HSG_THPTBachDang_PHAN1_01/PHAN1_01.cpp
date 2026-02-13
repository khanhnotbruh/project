#include <bits/stdc++.h>
using namespace std;

int main()
{
    //Attach files
    freopen("BAI1.INP", "r", stdin);
    freopen("BAI1.OUT", "w", stdout);

    //Main program
    int n, m, p, q, Temp = 0, s = 0;
    cin >> n >> m >> p >> q;
    for (int i = p; i <= q; i++) 
        if (!(i & 1))
            Temp += i, s++;
    printf("%d\n", s * (m - n + 1));
    Temp *= (m - n + 1);
    for (int i = n; i <= m; i++) 
        Temp += (i * 10 * s);
    cout << Temp;
    return 0;
}