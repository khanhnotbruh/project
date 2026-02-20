**LÊ ĐÌNH LONG -- THPT THÁI PHIÊN**

**CÂU HỎI**

**BÀI 3:**

Cho một mảng gồm $n$ số nguyên dương $a_{1},a_{2},\ldots,a_{n}$.

**Yêu cầu**: Bạn hãy tính tổng số nguyên tố nhỏ nhất trong mảng và số
chính phương lớn nhất trong mảng. (*Biết rằng trong mảng đã cho có ít
nhất một số nguyên tố và một số chính phương*)

**Dữ liệu** vào từ file văn bản **BAI3.INP**:

-   Dòng đầu tiên chứa số nguyên dương $n\ (3 \leq n \leq 5.000)$ là số
    phần tử của mảng;

-   Dòng tiếp theo chứa $n$ số nguyên dương
    $a_{1},a_{2},\ldots,a_{n}\ (a_{i} \leq {2.10}^{9},\ i = \overline{1;n})$.

*Các số nguyên trong file dữ liệu được ghi cách nhau ít nhất 1 dấu cách
trống.*

**Kết quả** ghi ra file văn bản **BAI3.OUT** một số duy nhất là tổng tìm
được.

**Ví dụ:**

+---------------+----------------+-------------------------------------+
| **BAI3.INP**  | **BAI3.OUT**   | **Giải thích**                      |
+---------------+----------------+-------------------------------------+
| 5             | 12             | Có 3 số nguyên tố: 3, 5, 13         |
|               |                |                                     |
| 3 4 5 9 13    |                | Có 2 số chính phương: 4, 9          |
|               |                |                                     |
|               |                | Tổng tìm được: $12 = 3 + 9$         |
+---------------+----------------+-------------------------------------+

**ĐÁP ÁN**

**BÀI 3:**

CONST

tfi = \'BAI3.INP\';

tfo = \'BAI3.OUT\';

VAR

n,k,res,i,x : longint;

a : array\[1..5000\] of longint;

Function nto(x : longint): boolean;

Var

i : longint;

Begin

if x \< 2 then exit(false);

for i := 2 to trunc(sqrt(x)) do

if x mod i = 0 then exit(false);

exit(true);

End;

BEGIN

assign(input,tfi); reset(input);

assign(output,tfo); rewrite(output);

read(n,k);

res := 0;

for i := 1 to n do

begin

read(x);

if nto(x) then

if k \> x then inc(res);

end;

write(res);

close(input); close(output);

END.
