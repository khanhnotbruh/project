Vũ Thị Hồng Thư - THPT Thụy Hương

CAUHOI

**Bài 1 (6 điểm): SỐ SONG TỐ**

Một số nguyên dương N được gọi là số song tố khi bản thân N là số nguyên
tố và tổng các chữ số của nó cũng là số nguyên tố (10≤N ≤10000); Ví dụ
11 là số song tố vì 11 nguyên tố và tổng các chữ số của 11=1+1=2 là số
nguyên tố.

**\* Yêu cầu:** Hãy lập trình đếm các số **song tố** có giá trị không
vượt quá số nguyên dương N cho trước.

**\* Dữ liệu vào:** Từ tệp văn bản **BAI1.INP** ghi số nguyên dương N
(10≤N ≤10000).

**\* Dữ liệu ra:** Ghi vào tệp văn bản **BAI1.OUT** là số lượng số song
tố tìm.

> **Ví dụ:**

  -------------- -------------- ----------------------------------------------
  **BAI1.INP**   **BAI1.OUT**   Giải thích

  100            10             Từ 10 đến 100 có các số song tố là: 11 23 29
                                41 43 47 61 67 83 89
  -------------- -------------- ----------------------------------------------

DAPAN

Chương trình nguồn

var t:text;

i,n,d:word;

function tongcs(x:word):word;

var tong:word;

begin

tong:=0;

while (x\<\>0) do

begin

tong:= tong + x mod 10;

x:= x div 10;

end;

tongcs:=tong;

end;

function sont(n:longint):boolean;

var i:longint;

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

read(t,n);

close(t);

assign(t,\'Bai1.out\');

rewrite(t);

d:=0;

for i := 10 to 100 do

if (sont(i)) and (sont(tongcs(i))) then inc(d);

write(t,d);

close(t);

end.
