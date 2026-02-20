Phạm Văn Giang -- THPT Thủy Sơn

CAUHOI

Cho n số dương a~i~, i=1..n, hãy đặt vào giữa n số nguyên dương này 2
phép nhân và n-3 phép cộng sao cho kết quả biểu thức là lớn nhất.

**Ví dụ:** Với n=5 và dãy số là 5 8 1 3 25\*8+1+3\*2=47

**Yêu cầu:** Không được thay đổi thứ tự xuất hiện của a~i~

**Dữ liệu vào:** Từ tệp bai4.inp gồm:

-   Dòng 1 là số nguyên dương n (4≤n≤1000)

-   n dòng tiếp theo, mỗi dòng 1 số nguyên dương a~i~ ( a~i~≤10.000)

**Kết quả:** Ghi vào tệp bai4.out kết quả của bài toán

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **Bai3.inp**                      | **Bai3.out**                      |
+===================================+===================================+
| 5                                 | 47                                |
|                                   |                                   |
| 5 8 1 3 2                         |                                   |
+-----------------------------------+-----------------------------------+

DAPAN

var f1,f2:text;

a:array\[1..1000\] of int64;

max,max1,t1,t2:int64;

i,d,c,d1,c1,d2,c2,n:longint;

begin

assign(f1,\'bai4.inp\');reset(f1);

assign(f2,\'bai4.out\');rewrite(f2);

readln(f1,n);

for i:=1 to n do readln(f1,a\[i\]);

max:=0;t1:=0;

for i:=1 to n-2 do

if a\[i\]\*a\[i+1\]\*a\[i+2\]\>max then

begin

max:=a\[i\]\*a\[i+1\]\*a\[i+2\];

d:=i;

c:=i+2;

end;

for i:=1 to d-1 do t1:=t1+a\[i\];

for i:=c+1 to n do t1:=t1+a\[i\];

t1:=t1+max;

max:=0;t2:=0;

for i:=1 to n-1 do

if a\[i\]\*a\[i+1\]\>max then

begin

max:=a\[i\]\*a\[i+1\];

d:=i;

c:=i+1;

end;

t2:=t2+max;

max:=0;max1:=0;

for i:=1 to d-1 do

if a\[i\]\*a\[i+1\]\>max then

begin

max:=a\[i\]\*a\[i+1\];

d1:=i;

c1:=i+1;

end;

for i:=c+1 to n do

if a\[i\]\*a\[i+1\]\>max1 then

begin

max1:=a\[i\]\*a\[i+1\];

d2:=i;

c2:=i+1;

end;

if max\>max1 then

begin

t2:=t2+max;

for i:=1 to d1-1 do t2:=t2+a\[i\];

for i:=c1+1 to d-1 do t2:=t2+a\[i\];

for i:=c+1 to n do t2:=t2+a\[i\];

end

else

begin

t2:=t2+max1;

for i:=c+1 to d2-1 do t2:=t2+a\[i\];

for i:=c2+1 to n do t2:=t2+a\[i\];

for i:=1 to d-1 do t2:=t2+a\[i\];

end;

if t1\>t2 then write(f2,t1) else write(f2,t2);

close(f1);close(f2);

end.
