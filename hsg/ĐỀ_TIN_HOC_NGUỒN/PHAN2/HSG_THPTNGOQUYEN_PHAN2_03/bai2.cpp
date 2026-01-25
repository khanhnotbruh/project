#include<bits/stdc++.h>
using namespace std;
int s[100005];
int main()
{
	ios_base::sync_with_stdio(false);
	cin.tie(0); cout.tie(0);
	freopen("bai1.inp","r",stdin);
	freopen("bai1.out","w",stdout);
	int n,d,t;
	cin>>n>>d>>t;
	for(int i=1;i<=n;i++)
	   cin>>s[i];
    int i=0,j=1;
   while(j<=n)
   {
       if(t+d*i>=s[j])
       {
           cout<<i+1<<' ';
           j++;
           i=0;
       }
