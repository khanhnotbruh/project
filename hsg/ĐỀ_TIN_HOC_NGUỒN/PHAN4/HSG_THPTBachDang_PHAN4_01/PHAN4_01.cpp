#include <bits/stdc++.h>
using namespace std;

int a[10000]; 

int main()
{
    //Attach files
    freopen("BAI4.INP", "r", stdin);
    freopen("BAI4.OUT", "w", stdout);

    //Main program
    int n, k, b; scanf("%d%d%d", &n, &k, &b);
    for (int i = 0; i < n; i++) cin >> a[i];
    int i = b - 1, res = 0;
    while (k > 0) {
        if (i == n) 
            i = 0;
        res += a[i];
        i++;
        k--;     
    }
    cout << res;
    return 0;
}