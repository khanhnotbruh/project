Vũ Thị Hồng Thư - THPT Thụy Hương

CAUHOI

**Bài 1. (6điểm): Tìm số**

Cho số nguyên dương x, khi đảo ngược trật tự các số của x ta sẽ thu được
một số nguyên dương y. Khi đó y được gọi là số đảo ngược của số x.

***Ví dụ:***

-   x = 153 thì số đảo ngược của x là số y = 351

-   x = 30 thì số đảo ngược của x là số y = 3

***Yêu cầu:*** Cho hai số nguyên dương p, q (p ≤ q). Hãy đếm số lượng số
nguyên dương x

> (p ≤ x ≤ q) sao cho số đảo ngược của x là số nguyên tố.

***Dữ liệu:*** Vào từ file văn bản **BAI1.INP** gồm một dòng duy nhất
chứa 2 số nguyên dương p, q (1≤p≤q≤10^4^)

***Kết quả:*** Ghi ra file văn bản **BAI1.OUT** một số nguyên duy nhất
là số lượng số nguyên x

> (p ≤ x ≤ q) mà số đảo ngược của x là số nguyên tố.

***Ví dụ:***

+-------------+-------------+------------------------------------------+
| *           | *           | **Giải thích**                           |
| *BAI1.INP** | *BAI1.OUT** |                                          |
+=============+=============+==========================================+
| 10 13       | 2           | x = 10, y = 1, y không là số nguyên tố   |
|             |             |                                          |
|             |             | x = 11, y = 11, y là số nguyên tố        |
|             |             |                                          |
|             |             | x = 12, y = 21, y không là số nguyên tố  |
|             |             |                                          |
|             |             | x = 13, y = 31, y là số nguyên tố        |
+-------------+-------------+------------------------------------------+

DAPAN

Chương trình nguồn

var t:text;

i,d,p,q:word;

function dn(x:word):word;

var sn:word;

begin

sn:=0;

while (x\<\>0) do

begin

sn:= sn \* 10 + x mod 10;

x:= x div 10;

end;

dn:=sn;

end;

function sont(n:word):boolean;

var i:word;

kt:boolean;

begin

if n \<= 1 then kt:= false

else

begin

kt:= true;

for i := 2 to trunc(sqrt(n)) do

if n mod i = 0 then

begin

kt:=false;

break;

end;

end;

sont:=kt;

end;

begin

assign(t,\'Bai1.inp\');

reset(t);

read(t,p,q);

close(t);

assign(t,\'Bai1.out\');

rewrite(t);

d:=0;

for i := p to q do

if sont(dn(i)) then inc(d) ;

write(t,d);

close(t);

end.
