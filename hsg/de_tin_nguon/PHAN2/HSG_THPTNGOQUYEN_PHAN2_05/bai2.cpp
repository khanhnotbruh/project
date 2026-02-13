#include<bits/stdc++.h>
using namespace std;
string s1,x;
bool dx(string s)
{
    int i;
    for (i=0; i<=s.length()/2; i++)
        if (s[i]!=s[s.length()-(i+1)]) return 0;
    return 1;
}
int main()
{
    ios_base::sync_with_stdio(0);
    cin.tie(0); cout.tie(0);
    freopen("bai1.inp","r",stdin);
    freopen("bai1.out","w",stdout);
    getline(cin,s1);
    int dem=0;
    stringstream ss(s1);
    while (ss>>x)
    {
        if (dx(x)) dem++;
    }
    cout<<dem;
}
