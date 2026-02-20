**Nguyễn Văn Anh -- THPT Trần Hưng Đạo**

**CAUHOI**

Bài 1 (6 điểm): Dãy chia hết:

Xét một dãy gồm N số nguyên tuỳ ý. Giữa các số nguyên đó ta có thể đặt
các dấu + hoặc - để thu được các biểu thức số học khác nhau. Ta nói dãy
số là chia hết cho Z nếu một trong các biểu thức thu được chia hết cho
Z. Hãy viết chương trình xác định tính chia hết của một dãy số đã cho.Dữ
liệu vào: Lấy từ một file văn bản có tên là CHIAHET.INP có cấu trúc như
sau: - Dòng đầu là hai số N và Z (2 ≤ N ≤ 10 000, 2 ≤ Z ≤ 100), cách
nhau bởi dấu trống. - Các dòng tiếp theo là dãy N số có trị tuyệt đối
không quá 10 000 cách nhau bởi dấu trống hoặc dấu xuống dòng. Dữ liệu
ra: Ghi ra file văn bản CHIAHET.OUT số 1 nếu dãy đã cho chia hết cho Z
và số 0 nếu ngược lại. Ví dụ:

+----------------+-------------+--------+----------------+-----------+
| **Bai1.INP**   | *           |        | **Bai1.INP**   | **B       |
|                | *Bai1.OUT** |        |                | ai1.OUT** |
+================+=============+========+================+===========+
| **4 6**        | **0**       |        | **4 7**        | **1**     |
|                |             |        |                |           |
| **1 2 3 5**    |             |        | **1 2 3 5**    |           |
+----------------+-------------+--------+----------------+-----------+

**\
**

> **DAPAN**
>
> **Hướng dẫn chấm**

+---------+--------+------------------------------------+-------------+
| Test    | Điểm   | Yêu cầu                            |             |
+=========+========+====================================+=============+
| 1       | 1      | -   Cứ $30\%$ số test ứng với      |             |
|         |        |     $30\%$ số điểm của             |             |
|         |        |     $1 \leq N \leq 100.$           |             |
+---------+--------+------------------------------------+-------------+
| 2       | 2      | -   Cứ $30\%$ số test khác ứng với |             |
|         |        |     $30\%$ số điểm cú              |             |
|         |        |     $1 \leq N \leq 500.$           |             |
+---------+--------+------------------------------------+-------------+
| 3       | 3      | -   Cứ 40% số test ứng với $40\%$  |             |
|         |        |     số điểm cú                     |             |
+---------+--------+------------------------------------+-------------+
| 4       | 1      | -   Trong tất cả các test          |             |
|         |        |     $1 \leq N \leq 10^{5}.$        |             |
+---------+--------+------------------------------------+-------------+

> **[code]{.underline}**

**Bài 2: Dãy chia hết:**

program DayChiaHet;

uses crt;

const inp=\'CHIAHET.inp\';

out=\'CHIAHET.out\';

var a:array\[0..1\] of set of byte;

g:text;

Z,n,t,i,j,l:longint;

function f(x:longint):byte;

begin

x:=x mod Z;

if x\<0 then f:=x+k else f:=x;

end;

begin

clrscr;

assign(g,inp);reset(g);

readln(g,n,Z);

t:=0;

read(g,j);

a\[0\]:=\[f(j)\];

for i:=2 to n do

begin

t:=1-t;

a\[t\]:=\[\];

read(g,j);

for l:=0 to Z-1 do

if l in a\[1-t\] then

begin

a\[t\]:=a\[t\]+\[f(l+j)\];

a\[t\]:=a\[t\]+\[f(l-j)\];

end;

end;

close(g);

assign(g,out);rewrite(g);

if 0 in a\[t\] then write(g,1) else write(g,0);

close(g);

write(\'Complete - Open file \',out,\' to view the result\');

readln;

End.
