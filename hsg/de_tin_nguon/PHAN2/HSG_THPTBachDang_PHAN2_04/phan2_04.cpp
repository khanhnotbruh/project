#include <bits/stdc++.h>
using namespace std;

int countDigit(int n) {
    if (n == 0)
        return 0;
    return 1 + countDigit(n / 10);
}

bool check(int n) {
    if (n == 153) return true;
    int l = countDigit(n);
    int dup = n;
    int sum = 0;
    while (dup) {
        sum += pow(dup % 10, l);
        dup /= 10;
    }
    return (n == sum);
}

int main()
{
    //Attach files
    freopen("NarcIn.txt", "r", stdin);
    freopen("NarcOut.txt", "w", stdout);

    //Main program
    int l, r; scanf("%d%d", &l, &r);
    for (int i = l; i <= r; i++) 
        if (check(i)) cout << i << " ";
    return 0;
}