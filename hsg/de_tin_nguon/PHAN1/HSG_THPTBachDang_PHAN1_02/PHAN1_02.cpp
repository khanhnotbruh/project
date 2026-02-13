#include <bits/stdc++.h>
using namespace std;

int main()
{
    //Attach files
    freopen("BAI1.INP", "r", stdin);
    freopen("BAI1.OUT", "w", stdout);

    //Main program
    int Money[] = {550, 1100, 1470, 1600};
    int Number[] = {100, 150, 200}; 
    int n, i = 2, j = 3, temp = 0; cin >> n;
    while (i > -1) {
        if (n > Number[i]) {
        temp += (n % Number[i]) * Money[j];
        n -= (n % Number[i]);
        i--;
        j--;
        } else {
            i--;
            j--;
        }
    }
    temp += n * Money[0];
    cout << temp;
    return 0;
}