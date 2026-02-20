Phạm Thị Thùy Dương -- THPT Quang Trung

CÂU HỎI

**Dãy con\
**Bài toán: Cho một dãy số gồm N số nguyên dương có giá trị trong
\[-1000;1000\].\
Tìm dãy số liên tiếp dài nhất của dãy ban đầu mà tổng của chúng có trị
tuyệt đối nhỏ nhất.Dãy con cần có ít nhất 2 phần tử.

Dữ liệu:

Cho trong file văn bản DAYCON.INP, trong đó:

Dòng đầu là số nguyên N\
Trên dòng i (2\<=i\<=N+1) là số hạng thứ i-1 của dãy số

Kết quả:

Cho trong file văn bản DAYCON.OUT, gồm một dòng duy nhất chứa ba số
nguyên, trong đó:

Chỉ số của số đầu tiên của dãy tìm được

Chỉ số của số cuối cùng của dãy tìm được

Trị tuyệt đối của tổng các số hạng của dãy tìm được.

Lưu ý: Nếu có nhiều dãy con có trị tuyệt của tổng các số hạng là nhỏ
nhất và số số hạng là lớn nhất, chỉ xuất ra dãy con có chỉ số đầu tiên
là nhỏ nhất.

+----------------------------------+-----------------------------------+
| DAYCON.INP                       | DAYCON.OUT                        |
+==================================+===================================+
| 6                                | 4 6 1                             |
|                                  |                                   |
| 5                                |                                   |
|                                  |                                   |
| 10                               |                                   |
|                                  |                                   |
| -5                               |                                   |
|                                  |                                   |
| -6                               |                                   |
|                                  |                                   |
| 2                                |                                   |
|                                  |                                   |
| 5                                |                                   |
+----------------------------------+-----------------------------------+

Sub1: 1\<=N\<=100\
Sub2: 100\<N\<=1000

ĐÁP ÁN

uses math;

const

fi=\'bai3.inp\';

fo=\'bai3.out\';

var i,n,j,top,bot,d,s:longint;

a:array\[0..10000\] of longint;

function sum(i,j:longint):longint;

begin

exit(a\[j\]-a\[i-1\]);

end;

BEGIN

assign(input,fi); reset(input);

assign(output,fo); rewrite(output);

readln(n);

s:=high(longint);

d:=low(longint);

for i:=1 to n do readln(a\[i\]);

for i:=1 to n do inc(a\[i\],a\[i-1\]);

for i:=1 to n-1 do

for j:=i+1 to n do s:=min(s,abs(sum(i,j)));

for i:=1 to n-1 do

for j:=i+1 to n do

if abs(sum(i,j))=s then

if j-i+1\>d then

begin

top:=i;

bot:=j;

end;

write(top,\' \',bot,\' \',s);

close(input);

close(output);

END.
