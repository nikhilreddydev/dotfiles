#include "bits/stdc++.h"
#define rep(i,n) for(int i = 0; i < n; ++i)
#define REP(i,k,n) for(int i = k; i < n; ++i)
#define REPR(i,k,n) for(int i = k; i >= n; --i)
#define sz(a) ((int)((a).size()))
#define all(cont) (cont).begin(), (cont).end()
#define pb push_back
#define ppb pop_back
#define ff first
#define ss second
#define nl '\n'
#define sp ' '

using namespace std;
using ll = long long;
using ld = long double;
using vi = vector<int>;

#ifdef MDB
#include "include/mdb.h"
#else
#define mdb(x)
#endif

void solve();
int main() {
	ios::sync_with_stdio(false);
	cin.tie(NULL);
	int t;
	cin >> t;
	while(t--) {
		solve();
		#ifdef MDB
		cout << "____________________\n";
		#endif
	}
	return 0;
}

void solve() {
}
