Vũ Thị Hồng Thư - THPT Thụy Hương

CAUHOI

**Bài 4. (10 điểm):**

Trong một cuộc thám hiểm hang động trong rừng sâu. Nhà thám hiểm cần
mang theo một cái túi có trọng lượng không quá b. Có n đồ vật cần mang
theo, đồ vật thứ i có trọng lượng là a~i~ và giá trị sử dụng là c~i~
(∀***i*** = 1..n).

***\* Yêu cầu:*** Hãy lập trình giúp nhà thám hiểm cần mang theo những
đồ vật nào để cho tổng giá trị sử dụng của các đồ vật mang theo là lớn
nhất.

**\* Dữ liệu vào**: Cho trong tệp văn bản **BAI4.INP**:

> \- Dòng thứ nhất: Ghi 2 số nguyên dương n và b (n≤10^4^, b≤10^6^).
>
> \- n dòng tiếp theo, dòng thứ i chứa 2 số nguyên dương a~i~ và c~i~ (1
> ≤ a~i~, c~i~ ≤ 10^6^, ∀***i*** = 1..n)

**\* Dữ liệu ra**: Ghi ra tệp văn bản **BAI4.OUT**

> \- Dòng đầu: Ghi tổng giá trị sử dụng của các đồ vật mang theo.
>
> \- Dòng 2: Ghi chỉ số các đồ vật tương ứng mà nhà thám hiểm mang theo.
>
> **Ví dụ:**

+---------------------------------+------------------------------------+
| **BAI4.INP**                    | **BAI4.OUT**                       |
+=================================+====================================+
| 4 8                             | 15                                 |
|                                 |                                    |
| 5 10                            | 1 2                                |
|                                 |                                    |
| 3 5                             |                                    |
|                                 |                                    |
| 2 3                             |                                    |
|                                 |                                    |
| 4 6                             |                                    |
+---------------------------------+------------------------------------+

DAPAN

Chương trình nguồn

type mang = array\[1..10000\] of longword;

var t1 : text;

n,i,j,k,max,vtd,vtc : longword;

b,tb, tc : longword;

a,c : mang;

begin

assign(t1,\'Bai4.inp\'); reset(t1);

read(t1,n,b);

for i := 1 to n do read(t1,a\[i\], c\[i\]);

close(t1);

max := 0 ; i := 1;

while i \<= n do

begin

tb := a\[i\];

j := i + 1;

while (j \<= n) and (tb \< b) do

begin

tb := tb + a\[j\];

inc(j);

end;

if tb\<=b then

begin

tc:=0;

for k:=i to j-1 do tc:=tc+c\[k\];

if max \< tc then

begin

max := tc;

vtd:=i;

vtc:=j-1;

end;

end;

inc(i)

end;

assign(t1,\'Bai4.out\'); rewrite(t1);

writeln(t1,max);

for i:=vtd to vtc do write(t1,i, \' \');

close(t1);

end.
