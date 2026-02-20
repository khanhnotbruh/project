Phạm Văn Giang -- THPT Thủy Sơn

CAUHOI

Bé Bin có n miếng giấy, trong mỗi miếng giấy có ghi 1 số nguyên dương
trong đoạn \[1;10^8^\]. Bé muốn ghép 2 tấm bìa bất kỳ thành 1 số mới.
Như vậy, với n miếng bìa, Bé có thể ghép thành 𝑛 div 2 cặp bìa chứa một
số mới. Bé Bin muốn đếm xem trong số 𝑛 div 2 số mới thì có bao nhiêu số
chia hết cho 3.

**Ví dụ:** Bé có 2 tấm bìa có số là 12 và 3 thì có thể ghép thành một
trong 2 số 123 hoặc 321.

**Yêu cầu:** Bạn hãy đếm số lượng lớn nhất cặp bìa chứa số chia hết cho
3 mà bé Bin có thể ghép được?

**Dữ liệu vào:** Từ tệp bai3.inp gồm:

-   Dòng 1 là n tấm bìa mà bé Bin có (n≤10^4^)

-   Dòng 2 là n số nguyên dương được ghi trên các tấm bìa

**Kết quả:** Ghi vào tệp bai3.out kết quả của bài toán

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **Bai3.inp**                      | **Bai3.out**                      |
+===================================+===================================+
| 3                                 | 1                                 |
|                                   |                                   |
| 12 3 1                            |                                   |
+-----------------------------------+-----------------------------------+

DAPAN

var a:array\[1..10000\] of longint;

i,n,k,j,j1,d:longint;

f1,f2:text;

function tong(m:longint):longint;

var t:longint;

begin

t:=0;

while m\<\>0 do

begin

t:=t+m mod 10;

m:=m div 10;

end;

tong:=t;

end;

begin

assign(f1,\'bai3.inp\');reset(f1);

assign(f2,\'bai3.out\');rewrite(f2);

readln(f1,n);

for i:=1 to n do read(f1,a\[i\]);

i:=1;d:=0;

while (n\<\>1) and (n\<\>0) do

begin

k:=0;

for j:=2 to n do

if (tong(a\[i\])+tong(a\[j\])) mod 3=0 then

begin

inc(d);

for j1:=j to n-1 do a\[j1\]:=a\[j1+1\];

n:=n-1;

for j1:=1 to n-1 do a\[j1\]:=a\[j1+1\];

n:=n-1;

break;

end

else inc(k);

if k=n-1 then

begin

for j1:=1 to n-1 do a\[j1\]:=a\[j1+1\];

n:=n-1;

end;

end;

write(f2,d);

close(f1);close(f2);

end.
