#include <bits/stdc++.h>
using namespace std;

int main()
{
    //Attach files
    freopen("BAI4.INP", "r", stdin);
    freopen("BAI4.OUT", "w", stdout);

    //Main program
    int n, Num; cin >> n;
    int Res = INT_MIN, Temp = 0, s = 0,
        Start = 0, End = 0;
    for (int i = 1; i <= n; i++) {
        cin >> Num; Temp += Num;
        if (Res < Temp) {
            Res = Temp;
            Start = s;
            End = i;
        }
        if (Temp < 0) {
            Temp = 0;
            s = i + 1;
        }
    }
    printf("%d %d %d", Start, End, Res);
    return 0;
}