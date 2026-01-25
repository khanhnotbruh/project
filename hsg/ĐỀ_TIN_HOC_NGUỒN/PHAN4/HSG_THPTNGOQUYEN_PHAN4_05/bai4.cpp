#include<bits/stdc++.h>
#define task "maxlen"
#define fi first
#define sc second
#define ll long long
#define ld long double
#define rep(i, a, b, c) for (int i = a; i <= b; i += c)
#define ford(i, a, b, c) for (int i = a; i >= b; i -= c)
#define fast ios::sync_with_stdio(0); cin.tie(0); cout.tie(0)
using namespace std;
typedef pair<double, double> Tpoint;
typedef pair<int, int> II;
typedef pair<int, II> III;
typedef pair<II, II> IV;
typedef pair<long long, int> LI;
typedef pair<long long, long long> LL;
const int inf = 2e9, maxn = 1e5 + 8;
const long long llinf = 2e18;
int n, q, a[maxn], tmp[maxn], f[321][maxn], g[321][maxn], cnt[maxn], check[maxn], Time = 0;

int main() {
	if (fopen(task".inp", "r")) {
		freopen(task".inp", "r", stdin);
		freopen(task".out", "w", stdout);
	}
	fast;
	cin >> n >> q;
	int bsize = sqrt(n);
	int block = n/bsize + 1;

	rep(i, 1, n, 1) {
		cin >> a[i];
		tmp[i] = a[i];
	}
	sort(tmp + 1, tmp + n + 1);
	rep(i, 1, n, 1) a[i] = lower_bound(tmp + 1, tmp + n + 1, a[i]) - tmp;

	rep(i, 1, block, 1) {
		++Time;
		rep(j, max((i - 1)*bsize, 1), n, 1) {
			if (check[a[j]] != Time) check[a[j]] = Time, cnt[a[j]] = j, f[i][j] = f[i][j - 1];
			else f[i][j] = max(f[i][j - 1], j - cnt[a[j]]);
		}
	}

	rep(i, 1, block, 1) {
		++Time;
		ford(j, min(i*bsize - 1, n), 1, 1) {
			if (check[a[j]] != Time) check[a[j]] = Time, cnt[a[j]] = j, g[i][j] = g[i][j + 1];
			else g[i][j] = max(g[i][j + 1], cnt[a[j]] - j);
		}
	}

	while (q--) {
		int l, r;
		cin >> l >> r;
		++Time;
		int left = l/bsize + 1, right = r/bsize + 1;
		int res = 0;
		if (left == right) {
			rep(i, l, r, 1) {
				if (check[a[i]] != Time) check[a[i]] = Time, cnt[a[i]] = i;
				else res = max(res, i - cnt[a[i]]);
			}
		}
		else {
			res = max(f[left + 1][r], g[right - 1][l]);

			rep(i, l, left*bsize - 1, 1) {
				if (check[a[i]] != Time) check[a[i]] = Time, cnt[a[i]] = i;
				else res = max(res, i - cnt[a[i]]);
			}

			rep(i, (right - 1)*bsize, r, 1) {
				if (check[a[i]] != Time) check[a[i]] = Time, cnt[a[i]] = i;
				else res = max(res, i - cnt[a[i]]);
			}
		}

		cout << res << '\n';
	}
}
