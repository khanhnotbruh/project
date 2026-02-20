Nguyễn Trí Dũng -- THPT Kiến An

CAUHOI

**Bài 2**: (4.0 điểm): **Tổng các chữ số**

Cho một số tự nhiên A có N chữ số (N\<=200). Hãy tính tổng các chữ số
của số A và cho biết chữ số lớn nhất là chữ số mấy và ở vị trí nào tính
từ phải qua trái.

**Dữ liệu**: Vào từ tệp văn bản CHUSO.INP, ghi một số tự nhiên A.

**Kết qủa**: Ghi ra tệp văn bản CHUSO.OUT, có cấu trúc như sau:

\- Dòng thứ nhất ghi tổng các chữ số.

\- Dòng thứ hai ghi số lớn nhất.

\- Dòng thứ ba ghi vị trí xuất hiện của chữ số lớn nhất.

\- Các số trên cùng một dòng ghi cách nhau một dấu cách.

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **CHUSO.INP**                     | **CHUSO.OUT**                     |
+===================================+===================================+
| 1238755864                        | 49                                |
|                                   |                                   |
|                                   | 8                                 |
|                                   |                                   |
|                                   | 4 8                               |
+-----------------------------------+-----------------------------------+

ĐÁP ÁN

const

f1=\'chuso.inp\';

f2=\'chuso.out\';

var st:string;

n,max,vt:integer;

f:text;

{\*\*\*\* - Nhap - \*\*\*\*}

procedure nhap;

begin

assign(f,f1);

reset(f);

read(f,st);

close(f);

end;

procedure xuli;

var i:integer;

begin

assign(f,f2);

rewrite(f);

for i:=1 to length(st) do

begin

n:=n+ord(st\[i\])-48;

if ord(st\[i\])-48\>max then

max:=ord(st\[i\])-48;

end;

writeln(f,n);

writeln(f,max);

for i:=1 to length(st) do

begin

if ord(st\[i\])-48 = max then

write(f,i,\' \');

end;

close(f);

end;

begin

nhap;

xuli;

end.
