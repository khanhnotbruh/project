Nguyễn Thị Nhung - THPT Mạc Đĩnh Chi

**CAUHOI**

**Đoạn con liên tiếp (10 điểm)**

Cho một dãy $N$ số nguyên dương $a_{1},a_{2},\ldots,a_{n}$.

**Yêu cầu**: Đếm số đoạn con gồm các phần tử liên tiếp (số phần tử
$\geq 2$) có tổng là số chính phương $\in \lbrack 1;k\rbrack$ (*số chính
phương là bình phương của một số nguyên dương*).

**Dữ liệu:** Vào từ file văn bản **BAI4.INP**.

-   Dòng đầu chứa hai số nguyên dương $N,k$

-   Dòng tiếp theo chứa $N$ số nguyên dương $a_{1},a_{2},\ldots,a_{n}$.

**Kết quả:** Ghi ra file văn bản **BAI4.OUT**:

-   Ghi một số nguyên duy nhất là số lượng đoạn con liên tiếp có tổng là
    số chính phương.

**Ví dụ:**

+-------------+-------------+------------------------------------------+
| *           | *           | **Giải thích**                           |
| *BAI4.INP** | *BAI4.OUT** |                                          |
+-------------+-------------+------------------------------------------+
| 4 15        | 2           | Có 2 đoạn con có tổng là số chính        |
|             |             | phương: $(2,2);(2,2,5)$ thỏa mãn điệu    |
| 2 2 5 9     |             | kiện đề bài.                             |
|             |             |                                          |
|             |             | Đoạn $(2,5,9)$ có tổng bằng $16 > k$     |
|             |             | không thỏa mãn điều kiện đề bài.         |
+-------------+-------------+------------------------------------------+

**Chú ý:**

-   70% số test tương ứng với 70% số điểm có
    $n \leq 100;1 \leq a_{i} \leq 10.000;k \leq 100.000$

-   20% số test tương ứng với 20% số điểm có
    $n \leq 10.000;1 \leq a_{i} \leq 1.000;k \leq 10.000$

-   10% số test tương ứng với 10% số điểm có
    $n \leq 100.000;1 \leq a_{i} \leq 100;k \leq 100$

**\
**

**TRALOI**

**Const**

tfi = \'bai4.inp\';

tfo = \'bai4.out\';

**Var**

fi,fo : text;

n,i,j,kq,x,k : longint;

sum : array\[0..100000\] of longint;

dd : array\[0..10000000\] of longint;

**BEGIN**

assign(fi,tfi); reset(fi);

assign(fo,tfo); rewrite(fo);

read(fi,n,k);

kq := 0;

sum\[0\] := 0;

dd\[0\] := 1;

for i := 1 to n do

begin

read(fi,x);

sum\[i\] := sum\[i-1\] + x;

inc(dd\[sum\[i\]\]);

for j := 1 to trunc(sqrt(k)) do

if (sum\[i\] - J\*j \>= 0) and (sum\[i\]-j\*j \<\> sum\[i-1\]) then kq
:= kq + dd\[sum\[i\]-j\*j\];

end;

write(fo,kq);

close(fi); close(fo);

**END.**
