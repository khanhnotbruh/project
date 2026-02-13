#include <bits/stdc++.h>
using namespace std;

int main()
{
    //Attach files
    freopen("BAI2.INP", "r", stdin);
    freopen("BAI2.OUT", "w", stdout);

    //Main program
    std::priority_queue<int> p; 
    int n, temp; cin >> n;
    for (int i = 0; i < n; i++) 
        cin >> temp, p.push(-temp);
    while (!p.empty()) {
        printf("%d ", -p.top());
        p.pop();
    }
    return 0;
}