Phạm Thị Thùy Dương -- THPT Quang Trung

CÂU HỎI

Cho 1 dãy số nguyên dương A gồm N phần tử. Bj (1\<=j\<=n-2) là UNLN của
3 số Aj , Aj+1, Aj+2. Yêu cầu: Tìm số Bj lớn nhất.

**Dữ liệu**: vào từ file văn bản **BAI2.INP**

\- Dòng đâu ghi số N (3\<=N\<=10\^4).

\- Dòng thứ 2 ghi N phần tử mảng A, mỗi phần tử cách nhau 1 dấu cách (Ai
\<=10\^6).

**Kết quả :** xuất vào file văn bản **BAI2.OUT** số Bmax duy nhất.

+----------------------------------+-----------------------------------+
| **BAI2.INP**                     | **BAI2.OUT**                      |
+==================================+===================================+
| 5                                | 3                                 |
|                                  |                                   |
| 3 9 6 4 8                        |                                   |
+----------------------------------+-----------------------------------+

**ĐÁP ÁN**

uses math;

const fi=\'bai2.inp\';

fo=\'bai2.out\';

var f1,f2:Text;

n,i,kq:longint;

a:Array\[1..1001\] of longint;

function ucln(x,y:longint):longint;

var tmp:longint;

begin

tmp:=y mod x;

while tmp\<\>0 do

begin

tmp:=x mod y;

x:=y;

y:=tmp;

end;

exit(x);

end;

procedure doc;

begin

assign(f1,fi); reset(f1);

readln(f1,n);

for i:=1 to n do

read(f1,a\[i\]);

close(f1);

end;

procedure xuli;

begin

assign(f2,fo); rewrite(f2); kq:=1;

for i:=1 to n-2 do

kq:=max(kq,ucln(a\[i\],ucln(a\[i+1\],a\[i+2\])));

writeln(f2,kq);

close(f2);

end;

BEGIN

doc;

xuli;

END.
