Vũ Thị Hồng Thư - THPT Thụy Hương

CAUHOI

**Bài 4. (10 điểm): SỐ T- NGUYÊN TỐ**

Bạn Nguyên rất yêu thích môn Toán. Trong lúc giải bài toán về số học,
bạn ấy phát hiện ra trong các số mà mình tìm được có nhiều số đặc biệt
với đặc điểm là chỉ có 3 ước số nguyên dương khác nhau. Bạn Nguyên đặt
tên cho các số này là số **T- Nguyên tố**.

**Yêu cầu:** Hãy lập trình giúp bạn Nguyên đếm xem có bao nhiêu số **T-
Nguyên tố** có giá trị không vượt quá một số nguyên dương *k* cho trước.

> **Dữ liệu vào:** Từ tệp văn bản **BAI4.INP** gồm nhiều dòng:
>
> \- Dòng 1 ghi 2 số nguyên dương N, k (2 ≤ *N* ≤ 10^9^).
>
> \- N dòng sau, mỗi dòng ghi một số nguyên dương a~i~ (2 ≤ a~i~ ≤
> 10^9^).

**Kết quả:** Ghi ra tệp văn bản **BAI4.OUT** gồm nhiều dòng

\- Dòng đầu ghi số lượng số **T- Nguyên tố** tìm được.

\- Các dòng sau, mỗi dòng là 1 số **T- Nguyên tố** tìm được

***Ví dụ***

+-----------+-----------+----------------------------------------------+
| **B       | **B       | Giải thích                                   |
| AI4.INP** | AI4.OUT** |                                              |
+-----------+-----------+----------------------------------------------+
| 10 15     | 2         | > 2 có 2 ước là: 1 và 2                      |
|           |           | >                                            |
| 2         | 4         | > 3 có 2 ước là : 1, 3                       |
|           |           | >                                            |
| 3         | 9         | > 4 có 3 ước là: 1, 2, 4                     |
|           |           | >                                            |
| 4         |           | > 5 có 2 ước là: 1, 5                        |
|           |           | >                                            |
| 5         |           | > 6 có 4 ước là : 1, 2, 3, 6                 |
|           |           | >                                            |
| 6         |           | > 7 có 2 ước là : 1, 7                       |
|           |           | >                                            |
| 7         |           | > 8 có 4 ước là : 1, 2, 4, 8                 |
|           |           | >                                            |
| 8         |           | > 9 có 3 ước là : 1, 3, 9                    |
|           |           | >                                            |
| 9         |           | > 16 có 5 ước là : 1, 2, 4, 8, 16            |
|           |           | >                                            |
| 16        |           | > 25 có 3 ước là : 1, 5, 25                  |
|           |           |                                              |
| 25        |           |                                              |
+-----------+-----------+----------------------------------------------+

**Chú ý:**

-   *20% số test với 2 ≤ N ≤ 10^2^ và ai ≤ 10^4^*

-   *20% số test với 10^2^\< N ≤ 10^3^ và ai ≤ 10^4^*

-   *40% số test với 10^3^\< N ≤ 10^6^ và ai ≤ 10^9^*

-   *20% số test với 10^6^ \< N ≤ 10^9^ và ai ≤ 10^9^*

DAPAN

Chương trình nguồn

var t:text;

n,i,d,k:longword;

a,b:array\[1..1000000\] of longword;

function Tnto(n:longword):boolean;

var i,d:longword;

kt:boolean;

begin

d:=2;

for i:=2 to n div 2 do

if n mod i = 0 then inc(d);

if d = 3 then kt:=true

else kt:=false;

Tnto:=kt;

end;

BEGIN

assign(T,\'Bai4.inp\');

reset(T);

read(T,n,k);

for i:=1 to n do read(T,a\[i\]);

close(T);

assign(T,\'Bai4.out\');

rewrite(T);

d:=0;

for i:=1 to n do

if a\[i\]\<=k then

if Tnto(a\[i\])then

begin

inc(d);

b\[d\]:=(a\[i\]);

end;

writeln(T,d);

for i:=1 to d do writeln(t,b\[i\]);

close(T);

END.
