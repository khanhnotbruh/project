Phạm Văn Toán -- THPT Nhữ Văn Lan

CAUHOI

**Bài 3: Dãy con liên tiếp**

Cho $n$ số nguyên $a_{1},a_{2},\ldots,a_{n}$.

**Yêu cầu**: Bạn hãy tìm dãy con liên tiếp dài nhất gồm các phần tử bằng
nhau?

**Dữ liệu:** Vào từ file văn bản **BAI3.INP**:

-   Dòng đầu chứa số nguyên dương $n\ (1 \leq n \leq 100000)$

-   Dòng tiếp theo chứa $n$ số nguyên
    $a_{1},a_{2},\ldots,a_{n}\ (\left| a_{i} \right| \leq 10^{8},\ 1 \leq i \leq n)$

**Kết quả:** Ghi ra file văn bản **BAI3.OUT** một số nguyên duy nhất là
độ dài dãy con liên tiếp dài nhất gồm các phần tử bằng nhau.

**Ví dụ:**

+-----------------------------------------------+----------------------+
| **BAI3.INP**                                  | **BAI3.OUT**         |
+-----------------------------------------------+----------------------+
| 14                                            | 4                    |
|                                               |                      |
| 1 2 3 3 3 9 9 9 9 8 8 4 5 6                   |                      |
+-----------------------------------------------+----------------------+

**Ràng buộc:** 60% số test tương ứng với 60% số điểm có
$1 \leq n \leq 100.$

DAPAN

**Bài 3: Dãy con liên tiếp**

**Pascal**

CONST

tfi = \'BAI3.INP\';

tfo = \'BAI3.OUT\';

VAR

a : array\[0..100001\] of longint;

n,l,i,res : longint;

BEGIN

assign(input, tfi); reset(input);

assign(output, tfo); rewrite(output);

read(n);

for i := 1 to n do read(a\[i\]);

res := 1;

l := 1;

a\[n+1\] := a\[n\] + 1;

for i := 2 to n+1 do

begin

if a\[i\] = a\[i-1\] then inc(l)

else

begin

if res \< l then res := l;

l := 1;

end;

end;

write(res);

close(input);close(output);

END.

**C++**

#include \<iostream\>

#include \<cmath\>

#include \<bits/stdc++.h\>

using namespace std;

int n,l,res;

int a\[100001\];

int main()

{

freopen(\"bai3.inp\",\"r\",stdin);

freopen(\"bai3.out\",\"w\",stdout);

cin \>\> n;

for(int i=0;i\<n;i++) cin\>\>a\[i\];

res = 1;

l = 1;

a\[n\] = a\[n-1\]+1;

for (int i=1;i\<=n;i++)

{

if (a\[i\]==a\[i-1\]) l +=1;

else

{

if (res \< l) res = l;

l = 1;

}

}

cout \<\< res;

return 0;

}
