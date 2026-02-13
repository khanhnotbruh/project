#include<bits/stdc++.h>
using namespace std;
int S(int x)
{
    int tmp = 0;
    while (x>0)
    {
        tmp += x%10;
        x/=10;
    }
    return tmp;
}
int main()
{
    int t;
    freopen("numbers.inp","r",stdin);
    freopen("numbers.out","w",stdout);
    cin >> t;
    while (t--)
    {
        int n,sum=0;
        cin >> n;
        int m=n;
        for (int i=2;i<=n;i++)
        {
            if (m%i==0)
            {
                while (m%i==0)
                {
                    sum+=S(i);
                    m/=i;
                }
            }
        }
        if (S(n)==sum) cout << "1"<< "\n";
        else cout << "0" << "\n";
    }
}
