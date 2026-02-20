Nguyễn Thanh Hà -- THPT An Dương

CAUHOI

**Câu 1: (6 điểm)**

Một số được coi là đẹp nếu nó là \"[[số đối
xứng]{.underline}](https://luyencode.net/problem/NPALIN1)\" và tổng các
chữ số của nó chia hết cho 10.

Cho hai số nguyên dương l, r, đếm xem có bao nhiêu số đẹp trong
đoạn \[l, r\]

**Dữ liệu vào**

-   Gồm nhiều dòng, mỗi dòng ghi hai số nguyên dương l, r cách nhau bởi
    > dấu cách.

**Giới hạn:**

-   Có không quá 10^4^ dòng (tests), 1≤l≤r≤10^9^,r-l≤10^4^

**Dữ liệu ra**

-   Với mỗi cặp số l, r in ra trên một dòng số số đẹp trong đoạn \[l,
    > r\]

Ví dụ

+---------------------------------------+------------------------------+
| **BAI1.INP**                          | **BAI1.OUT**                 |
+=======================================+==============================+
| 1 10                                  | 0                            |
|                                       |                              |
| 11 100                                | 1                            |
+---------------------------------------+------------------------------+

#include\<bits/stdc++.h\>\
using namespace std;\
int dao(int a)\
{\
int b(0);\
while(a\>0)\
{\
b=b\*10+ (a%10);\
a/=10;\
}\
return b;\
}\
int chuso(int a)\
{\
int b(0);\
while (a\>0)\
{\
b+=a%10;\
a/=10;\
}\
return b;\
}\
int main()\
{\
int l, r, i, c(0);\
while(cin\>\>l\>\>r)\
{\
c=0;\
for(i=l; i\<=r; ++i)\
{\
if(i==dao(i)&&chuso(i)%10==0) c+=1;\
}\
cout\<\<c\<\<\"\\n\";\
}\
return 0;

HOẶC

#include\<bits/stdc++.h\>

#define ll long long

#define endl \'\\n\'

#define ull unsigned long long

using namespace std;

bool check(int a){

int sum=0,res=0,temp=a;

while(a!=0){

res = res\*10 + a%10;

sum+=a%10;

a/=10;

}

return (res==temp && sum%10==0) ? true : false;

}

void solve(){

int l,r;

while(cin \>\> l \>\> r){

int res=0;

for(int i =l;i\<=r;i++)

if(check(i)) res++;

cout\<\<res\<\<\'\\n\';

}

}

int main()

{

srand(time(NULL));

ios_base::sync_with_stdio(false); cin.tie(0); //cout.tie(0);

// int l,r;

solve();

}

}

Top of Form

Bottom of Form
