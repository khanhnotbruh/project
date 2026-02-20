**LÊ ĐÌNH LONG -- THPT THÁI PHIÊN**

**CÂU HỎI**

**BÀI 3:**

Cho một mảng gồm $n$ số nguyên dương $a_{1},a_{2},\ldots,a_{n}$ và số
nguyên dương k.

**Yêu cầu**: Hãy cho biết số lượng các phần tử trong mảng thỏa mãn:

\- Có giá trị nhỏ hơn k;

\- Là số nguyên tố.

**Dữ liệu** vào từ file văn bản **BAI3.INP:**

-   Dòng đầu tiên chứa hai số nguyên dương
    $n,\ k\ (3 \leq n \leq 5.000,\ 0 < k \leq {2.10}^{9})$;

-   Dòng tiếp theo chứa $n$ số nguyên dương
    $a_{1},a_{2},\ldots,a_{n}\ ({0 < a}_{i} \leq {2.10}^{9})$.

*Các số nguyên trong file dữ liệu được ghi cách nhau ít nhất 1 dấu cách
trống.*

**Kết quả** ghi ra file văn bản **BAI3.OUT** một số nguyên duy nhất là
số lượng phần tử tìm được.

**Ví dụ:**

+-----------------------+-------------+-------------------------------+
| **BAI3.INP**          | *           | **Giải thích**                |
|                       | *BAI3.OUT** |                               |
+-----------------------+-------------+-------------------------------+
| 7 8                   | 3           | Có 4 số nguyên tố: 2 3 7 11   |
|                       |             |                               |
| 1 2 3 8 7 6 11        |             | Có 3 số nguyên tố nhỏ hơn 8   |
+-----------------------+-------------+-------------------------------+

**[ĐÁP ÁN:]{.underline}**

**BÀI 2:**

CONST

tfi = \'BAI2.INP\';

tfo = \'BAI2.OUT\';

VAR

n, min, max, i : longint;

a : array\[1..5000\] of longint;

Function nto(x : longint): boolean;

Var

i :longint;

Begin

if x \< 2 then exit(false);

for i := 2 to x div 2 do

if x mod i = 0 then exit(false);

exit(true);

End;

BEGIN

assign(input,tfi); reset(input);

assign(output,tfo); rewrite(output);

read(n);

for i := 1 to n do read(a\[i\]);

min := 1000000000;

max := 0;

for i := 1 to n do

begin

if nto(a\[i\]) then

if min \> a\[i\] then min := a\[i\];

if sqr(trunc(sqrt(a\[i\])))=a\[i\] then

if max \< a\[i\] then max := a\[i\];

end;

write(min + max);

close(input); close(output);

END.
