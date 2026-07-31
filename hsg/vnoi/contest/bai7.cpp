#include <bits/stdc++.h>
using namespace std;

auto _ = []() {
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    return 0;
}();

void solve() {
    int n, m;
    cin >> n >> m;
    vector<int> prev_row(m, 0);
    long long ans = 0;
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            int cur;
            cin >> cur;
            
            if (cur > prev_row[j]) {
                ans += (cur - prev_row[j]);
            }
            
            prev_row[j] = cur; // Update for the next row
        }
    }
    cout << ans << '\n';
}
int main() {
    int q;
    if (cin >> q) {
        while (q--) {
            solve();
        }
    }
    return 0;
}
