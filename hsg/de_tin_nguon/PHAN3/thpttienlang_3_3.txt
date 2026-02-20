**Lê Văn Quỳnh -- THPT Tiên Lãng**

**CAUHOI**

**Bài 2**. ***Đặt tên chương trình nguồn là BAI3.PAS***

Cho dãy A và dãy B gồm N phần tử nguyên dương.

**\*Yêu cầu:**

a\) Kiểm tra xem 2 dãy A và B có tương đương không. Biết hai dãy A và B
được gọi là tương đương nếu A~i~ \> A~i+1~ thì B~i~ \> B~i+1~ ; nếu A~i~
\< A~i+1~ thì B~i~ \< B~i+1~ và nếu A~i~ = A~i+1~ thì B~i~ = B~i+1~

b\) Cho biết dãy nào có tổng các số chẵn lớn hơn

**\*Dữ liệu vào:** Cho trong tệp BAI2.INP :

\- Dòng đầu ghi số N

\- N dòng tiếp theo lần lượt ghi giá trị của các phần tử của dãy A

\- N dòng tiếp theo lần lượt ghi giá trị của các phần tử của dãy B

**\*Kết quả:** Ghi ra tệp BAI2.OUT :

\- Dòng đầu ghi giá trị "Khong" nếu hai dãy A và B không tương đương
hoặc "Co" nếu ngược lại

\- Dòng thứ hai ghi tên dãy có tổng các số chẵn lớn hơn hoặc ghi "Khong"
nếu 2 dãy có tổng số chẵn bằng nhau

**\*Ví dụ:**

+--------------------------------+----+--------------------------------+
| BAI2.INP                       |    | BAI2.OUT                       |
+================================+====+================================+
| 3                              |    | Co                             |
|                                |    |                                |
| 7                              |    | B                              |
|                                |    |                                |
| 16                             |    |                                |
|                                |    |                                |
| 2                              |    |                                |
|                                |    |                                |
| 36                             |    |                                |
|                                |    |                                |
| 51                             |    |                                |
|                                |    |                                |
| 24                             |    |                                |
+--------------------------------+----+--------------------------------+

**DAPAN**

**Bài 2**

uses crt;

var a,b:array\[1..22\] of integer;

c,d,x,y,z:integer;

m,n:text;

begin

clrscr;

assign(m,\'bai2.inp\') ;assign(n,\'bai2.out\');

reset(m);rewrite(n);

readln(m,c);

for d:=1 to c do

readln(m,a\[d\]);

for d:=1 to c do

readln(m,b\[d\]);

a\[c+1\]:=2\*a\[c\];

b\[c+1\]:=2\*b\[c\];

for d:=1 to c do begin

if ((a\[d+1\]-a\[d\]) \* (b\[d+1\]-b\[d\]) \<0 )then

z:=z+1;

if (a\[d\] mod 2=0) then y:=y+1 ;

if (b\[d\] mod 2=0) then y:= y-1;

end;

if z=0 then

writeln(n,\'Co\')

else

writeln(n,\'Khong\') ;

if y=0 then

writeln(n,\'Khong\')

else if y\>0 then writeln(n,\'A\')

else writeln(n,\'B\');

close(m);close(n);

readln

end.
