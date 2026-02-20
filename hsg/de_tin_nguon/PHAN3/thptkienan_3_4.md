Hoàng Tiến Long -- THPT Kiến An

CAUHOI

Bài 3: (5.0 điểm) Cho dãy $A$ gồm$n$ số nguyên dương
$a_{1},a_{2},\ldots,a_{n}$. Xây dựng dãy
$B = \{ b_{1},b_{2},\ldots,b_{m}\}$ gồm tất cả các phần tử khác nhau của
dãy $A$.

**Ví dụ**: $A = \{ 1,\ 1,\ 3,\ 5,\ 6,\ 5,\ 6,\ 6\}$ ta có dãy $B$ là
$B = \{ 1,\ 3,\ 5,\ 6\}$

Từ dãy $B$, ta xây dựng dãy $C = b_{i} \times k_{i}$ trong đó $k_{i}$ là
số lần xuất hiện của $b_{i}$ trong dãy $A$. Ở ví dụ trên, ta thu được
dãy $C = \{ 2,\ 3,\ 10,\ 18\}$

**Yêu cầu**: Bạn hãy tìm giá trị nhỏ nhất của dãy $B\ $và giá trị lớn
nhất của dãy $C$.

**Dữ liệu:** Vào từ file văn bản **BAI3.INP**gồm:

-   Dòng thứ nhất chứa một số nguyên dương $n$;

-   Dòng tiếp theo chứa $n$ số nguyên dương $a_{i}(1 \leq i \leq n).$

**Kết quả:** Ghi ra file văn bản **BAI3.OUT** hai số nguyên theo thứ tự
là giá trị nhỏ nhất của dãy $B\ $và giá trị lớn nhất của dãy $C$.

> **Ví dụ:**

+-----------------------------+------------+---------------------------+
| **BAI3.INP**                | **         | **Giải thích**            |
|                             | BAI3.OUT** |                           |
+=============================+============+===========================+
| 13                          | 1 7        | Dãy                       |
|                             |            | $B = \{ 1,\ 2,\ 3,\ 4\}$  |
| 1 2 2 3 3 1 1 1 1 4 1 1 2   |            |                           |
|                             |            | Dãy                       |
|                             |            | $C = \{ 7,\ 6,\ 6,\ 4\}$  |
+-----------------------------+------------+---------------------------+

DAPAN

USES math;

CONST

tfi = \'BAI3.INP\';

tfo = \'BAI3.OUT\';

VAR

n,i,j,tg,x,kq,m : longint;

a,b,c,k : array\[1..100000\] of int64;

kq1,kq2 : int64;

procedure qsort(l,r: longint);

Var

i,j,x,tg : longint;

Begin

i := l;

j := r;

x := a\[(l+r) div 2\];

repeat

while a\[i\] \< x do inc(i);

while a\[j\] \> x do dec(j);

if i \<= j then

begin

tg := a\[i\];

a\[i\] := a\[j\];

a\[j\] := tg;

inc(i);

dec(j);

end;

until i\>j;

if l\<j then qsort(l,j);

if i\<r then qsort(i,r);

End;

BEGIN

assign(input,tfi); reset(input);

assign(output,tfo); rewrite(output);

read(n);

for i := 1 to n do read(a\[i\]);

qsort(1,n);

b\[1\] := a\[1\];

k\[1\] := 1;

m := 1;

for i := 2 to n do

begin

if a\[i\] \<\> b\[m\] then

begin

inc(m);

b\[m\] := a\[i\];

k\[m\] := 1;

end

else inc(k\[m\]);

end;

for i := 1 to m do c\[i\] := b\[i\]\*k\[i\];

kq1 := 0;

kq2 := 10\*\*18;

for i := 1 to m do

begin

if kq1 \< c\[i\] then kq1 := c\[i\];

if kq2 \> b\[i\] then kq2 := b\[i\];

end;

write(kq2,\' \',kq1);

END.
