Nguyễn Thanh Hà -- THPT An Dương

CAUHOI

**Câu 3: (8 điểm)**

Ta định nghĩa \"chỉ số hài hòa\" của dãy số nguyên A có N phần tử là độ
dài của dãy con liên tiếp dài nhất \[L, R\] thỏa mãn tính chất sau: với
mọi L \< i ≤ R thì ∣*A*~i-1~ --*A~i~*∣=1. Dãy A được gọi là \"hài hòa\"
khi chỉ số hài hòa lớn hơn 50% độ dài dãy. Hãy xác định xem một dãy số
nguyên có hài hòa hay không.

**Dữ liệu vào**

Dòng đầu tiên chứa số nguyên dương T tương ứng với số lượng bộ
test.T nhóm tiếp theo, mỗi nhóm gồm 2 dòng:

-   Dòng đầu tiên chứa số nguyên dương N - độ dài mảng A;

-   Dòng thứ hai chứa N số nguyên tương ứng với giá trị của mảng A.

**Giới hạn:**

> T, N ≤ 1000; ∣*Ai*​∣≤100.

**Dữ liệu ra**

> In ra T dòng, mỗi dòng in ra Yes hoặc No tương ứng với dãy A có hài
> hòa hay không.

**Ví dụ**

+---------------------------------------+------------------------------+
| **BAI3.INP**                          | **BAI3.OUT**                 |
+=======================================+==============================+
| 2                                     | No                           |
|                                       |                              |
| 6                                     | Yes                          |
|                                       |                              |
| 1 2 1 1 3 5                           |                              |
|                                       |                              |
| 5                                     |                              |
|                                       |                              |
| 1 2 3 4 4                             |                              |
+---------------------------------------+------------------------------+

Gợi ý

-   Trong test ví dụ đầu tiên, dãy con dài nhất thỏa mãn tính chất
    > là \[1, 3\], chỉ số hài hòa là 3 chưa lớn hơn 50% độ dài dãy. Vì
    > vậy, dãy A không hài hòa, in ra No.

-   Trong test ví dụ thứ hai, dãy con dài nhất thỏa mãn tính chất
    > là \[1, 4\], chỉ số hài hòa là 4 lớn hơn 50% độ dài dãy. Vì vậy,
    > dãy A là dãy hài hòa, in ra Yes.

#include\<bits/stdc++.h\>\
using namespace std;\
int a\[10000\];

int main(){\
ios_base::sync_with_stdio(false);\
cin.tie(0);\
cout.tie(0);\
int t; cin \>\> t;\
while(t\--){\
int n; cin \>\> n;\
for(int i=0;i\<n;i++){\
cin \>\> a\[i\];\
}\
int cnt = 0;\
for(int i=1;i\<n;i++){\
if(abs(a\[i-1\]-a\[i\])==1){\
cnt++;\
}\
}\
if(cnt\<=n/2)\
cout \<\< \"No\" \<\< \"\\n\";\
else\
cout \<\< \"Yes\" \<\< \"\\n\";\
}\
}
