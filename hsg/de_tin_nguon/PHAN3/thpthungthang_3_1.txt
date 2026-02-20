Vũ Văn Đại -- THPT Hùng Thắng CAUHOI

**Câu 1: Dãy số (3 điểm)**

Cho dãy số nguyên a~1~, a~2~, ..., a~n~ . với ![](media/image1.wmf)

1.  Tìm số nguyên tố lớn nhất của dãy

2.  Số nào xuất hiện nhiều nhất trong dãy.

**Dữ liệu:**

Đầu vào cho bởi tệp: primemax.inp

-   Dòng đầu tiên là số n

-   Dòng thứ hai là n số nguyên mỗi số cách nhau bởi một dấu cách.

Đầu ra cho bởi tệp: primemax.out

-   Dòng thứ nhất là số nguyên tố lớn nhất của dãy, nếu không có số
    nguyên tố thì in ra 0.

-   Dòng thứ hai là số xuất hiện nhiều nhất trong dãy, nếu có nhiều số
    có số lần xuất hiện bằng nhau thì in ra số đầu tiên.

**Ví dụ:**

+----------------------------------+-----------------------------------+
| **PRIMEMAX.INP**                 | **PRIMEMAX.OUT**                  |
+==================================+===================================+
| 16                               | 0                                 |
|                                  |                                   |
| 0 0 0 0 1 1 1 1 -1 -1 -1 -1 4 4  | 0                                 |
| 4 4                              |                                   |
+----------------------------------+-----------------------------------+
| 4                                | 5737                              |
|                                  |                                   |
| 11873 5737 9269 7956             | 11873                             |
+----------------------------------+-----------------------------------+

**Trong đó:**

-   Có 70% số test ứng với 70% số điểm của bài có ![](media/image2.wmf)

-   Có 30% số test ứng với 30% số điểm của bài có
    ![](media/image3.wmf)$n \leq 10^{5}$

DAPAN

var f1,f2:text;

n,i,j,a,maxnt,somax,dem,so:longint;

arr,arr1:array\[1..100000\] of longint;

function nt(x:longint):boolean;

var t:longint;

begin

if x\<=1 then nt:=false

else

begin

if x\<4 then nt:=true

else

for t:=2 to trunc(sqrt(x)) do

if x mod t = 0 then

begin

nt:=false;

exit;

end;

nt:=true;

end;

end;

begin

assign(f1,\'bai1.inp\');

assign(f2,\'bai1.out\');

reset(f1);

readln(f1,n);

maxnt:=0;

somax:=0;

for i:=1 to n do

begin

read(f1,a); arr\[i\]:=a;

if a\>1 then

if nt(a) then if maxnt \< a then maxnt:=a;

end;

close(f1);

for i:=1 to n do

begin

dem:=0;

for j:=i to n do

if arr\[j\]=arr\[i\] then inc(dem);

if somax \< dem then

begin

somax:=dem;

so:=arr\[i\];

end;

end;

rewrite(f2);

writeln(f2,maxnt);

write(f2,so);

close(f2);

end.
