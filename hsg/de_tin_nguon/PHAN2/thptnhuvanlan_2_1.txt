Phạm Văn Toán -- THPT Nhữ Văn Lan

CAUHOI

**Bài 2: Tìm số**

Cho số nguyên dương $n$, trong dạng biểu diễn nhị phân của số $n$, người
ta đảo các bit 0 thành bit 1, bit 1 thành bit 0 để tạo nên số nguyên
dương $m.$

**Yêu cầu**: in ra giá trị $m$ trong dạng biểu diễn thập phân.

**Dữ liệu***:* Vào từ file văn bản **BAI2.INP** gồm một dòng duy nhất
chứa một số nguyên dương $n\ (1 \leq n \leq 2^{31})$

**Kết quả***:* Ghi ra file văn bản **BAI2.OUT** một số nguyên duy nhất
là số $m$ tìm được.

**Ví dụ:**

+-------------+--------------+-----------------------------------------+
| *           | **BAI2.OUT** | **Giải thích**                          |
| *BAI2.INP** |              |                                         |
+-------------+--------------+-----------------------------------------+
| 12          | 3            | $$n = 12$$                              |
|             |              |                                         |
|             |              | Biểu diễn nhị phân: $n = 1100$          |
|             |              |                                         |
|             |              | Đảo bit: $m = 0011$                     |
|             |              |                                         |
|             |              | Giá trị $m$ trong hệ thập phân $m = 3$  |
+-------------+--------------+-----------------------------------------+

DAPAN

**Bài 2: Tìm số**

**Pascal**

CONST

tfi = \'BAI2.INP\';

tfo = \'BAI2.OUT\';

VAR

n,i : longint;

Function getbit(x,i : longint): longint;

begin

exit( (x shr i) and 1);

end;

Procedure setbit(var x : longint; i, value : longint);

begin

if value = 1 then x := (1 shl i) or x

else x := (not(1 shl i) and x);

end;

BEGIN

assign(input, tfi); reset(input);

assign(output, tfo); rewrite(output);

read(n);

for i := 0 to trunc(ln(n)/ln(2)) do setbit(n,i,1-(getbit(n,i)));

writeln(n);

close(input);close(output);

END.

**C++**

#include \<iostream\>

#include \<cmath\>

#include \<bits/stdc++.h\>

using namespace std;

int n;

int getbit(int x, int i)

{

return ((x \>\> i) & 1);

}

void setbit(int &x, int i, int value)

{

if (value == 1) x = ((1 \<\< i)\|x);

else x = (\~(1\<\<i)&x);

}

int main()

{

freopen(\"bai2.inp\",\"r\",stdin);

freopen(\"bai2.out\",\"w\",stdout);

cin \>\> n;

for(int i=0;i\<=log(n)/log(2);i++) setbit(n,i,1 - getbit(n,i));

cout \<\<n;

return 0;

}
