Nguyễn Văn Tài - THPT Lê Ích Mộc

CAUHOI

**Dãy dài nhất**

Cho dãy số nguyên dương ![](media/image1.png){width="1.3125in"
height="0.19791666666666666in"} và số nguyên dương
![](media/image2.png){width="0.125in" height="0.19791666666666666in"}.
Hãy tìm dãy con dài nhất (là dãy có nhiều số nhất) gồm các số liên tiếp
của A mà tổng tất cả các số của dãy con này chia hết cho
![](media/image2.png){width="0.125in" height="0.19791666666666666in"}.

**Dữ liệu:** Nhập từ file văn bản BAI4.INP

-   Dòng đầu tiên ghi hai số nguyên dương
    ![](media/image3.png){width="1.75in" height="0.19791666666666666in"}
    ghi cách nhau một dấu trống

-   Dòng thứ hai ghi ![](media/image4.png){width="0.125in"
    height="0.19791666666666666in"} số nguyên dương
    ![](media/image5.png){width="0.8541666666666666in"
    height="0.19791666666666666in"} mô tả dãy
    ![](media/image6.png){width="0.10416666666666667in"
    height="0.19791666666666666in"}, hai số nguyên liên tiếp ghi cách
    nhau một dấu trống. Giá trị các số nguyên không vượt quá 10^9^

**Kết quả:** Ghi ra file văn bản BAI4.OUT độ dài của dãy con dài nhất
tìm được

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **Lim12.INP**                     | **Lim12.OUT**                     |
+===================================+===================================+
| 6 3                               | 5                                 |
|                                   |                                   |
| 3 2 4 6 3 7                       |                                   |
+-----------------------------------+-----------------------------------+

*Ghi chú:* Kết quả được chấm qua 6 test, mỗi test đúng được 0,25 điểm,
trong đó:

DAPAN

const

fi=\'Phan4_3.inp\';

fo=\'phan4_3.out\';

var

f1,f2:text;

a:array\[0..100000\] of longint;

i,j,n,k,max,s:longint;

begin

assign(f1,fi);

assign(f2,fo);

reset(f1);

rewrite(f2);

max:=0;

read(f1,n,k);

for i:=1 to n do

read(f1,a\[i\]);

for i:=1 to n do

begin

s:=0;

for j:=i to n do

begin

s:=s+a\[j\];

if s mod k=0 then

if j-i+1\>max then

max:=j-i+1;

end;

end;

write(f2,max);

close(f1);

close(f2);

end.
