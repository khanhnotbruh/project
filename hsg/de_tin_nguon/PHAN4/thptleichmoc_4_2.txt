Nguyễn Đăng Hiệp - Trường THPT Lê Ích Mộc

CAUHOI

Tên chương trình nguồn DAYCON.PAS

Cho dãy số nguyên dương gồm N phần tử A1, A2,..., An.

Yêu cầu: Hãy liệt kê tất cả các dãy con gồm các phần tử đứng liên tiếp
của dãy trên sao cho tổng giá trị các phần tử của dãy con đó bằng M.

Dữ liệu vào: Cho trong file văn bản DAYCON.INP, có cấu trúc như sau:

\- Dòng 1: Ghi 2 số nguyên dương N và M. Hai số được ghi cách nhau ít
nhất một dấu cách. (1 N 1000; 1 M 32000)

\- Dòng 2: Ghi N số nguyên dương Ai. Các số được ghi cách nhau ít nhất
một dấu cách. (1 Ai 10000 )

Dữ liệu ra: Ghi ra file văn bản DAYCON.OUT, gồm nhiều dòng. Mỗi dòng ghi
một dãy con tìm được. Các dãy con được ghi theo thứ tự xuất hiện của nó
trên dãy ban đầu. Các số trên cùng một dòng được ghi cách nhau ít nhất
một dấu cách.

Nếu không tìm được dãy con thỏa mãn điều kiện thì ghi ra file một số: 0.

+-----------------------------------+-----------------------------------+
| DAYCON.INP                        | DAYCON.OUT                        |
+===================================+===================================+
| 11 6                              | 3 1 2                             |
|                                   |                                   |
| 1 4 3 1 2 1 6 5 1 4 1             | 6                                 |
|                                   |                                   |
|                                   | 5 1                               |
|                                   |                                   |
|                                   | 1 4 1                             |
+-----------------------------------+-----------------------------------+
| 5 6                               | 0                                 |
|                                   |                                   |
| 1 2 5 2 1                         |                                   |
+-----------------------------------+-----------------------------------+

DAPAN

Dãy con liên tiếp

program day_con;

const fi=\'daycon.inp\';

f0=\'daycon.out\';

type mm=array\[1..10000\] of integer;

var f:text;

a:mm;

n,m:integer;

procedure doc;

var i:integer ;

begin

assign(f,fi);

reset(f);

read(f,n,m);

for i:=1 to n do read(f,a\[i\]);

close(f);

end;

procedure xuli;

var i,j,l:integer;

t:longint;

kt:boolean;

begin

assign(f,f0);

rewrite(f);

kt:=false;

for i:=1 to n do

begin

j:=i;

t:=0;

while (t\<m )and (j\<=n) do

begin

t:=t+a\[j\];

j:=j+1;

end;

if t=m then

begin

kt:=true;

for l:=i to j-1 do write(f,a\[l\],\' \');

writeln(f);

end;

end;

if kt=false then write(f,0);

close(f);

end;

begin

doc; xuli;

end.
