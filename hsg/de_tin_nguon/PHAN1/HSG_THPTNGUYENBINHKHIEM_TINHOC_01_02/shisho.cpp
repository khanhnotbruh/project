#include <bits/stdc++.h>
using namespace std;
int daonguoc(int x)
{
    int tmp=0;
    while (x>0)
   {
       tmp=tmp*10+x%10;
       x/=10;
   }
   return tmp;
}
bool ktra (int x)
{
    if (x==1) return false;
    for (int i=2; i*i<= x;i++)
        if (x%i==0) return false ;
    return true;
}
int main ()
{ int t;
    freopen("shisho.inp","r",stdin);
    freopen("shisho.out","w",stdout);
  cin >>t; int a;int b=0;
    while (t>0)
    {
        t--;


            cin >>a;

            if (a >= 1000 && ktra(daonguoc(a))) {b++;}



    }cout << b ;

}

