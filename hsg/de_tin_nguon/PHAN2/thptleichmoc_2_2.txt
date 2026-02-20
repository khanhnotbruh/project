Nguyễn Đăng Hiệp - Trường THPT Lê Ích Mộc

CAUHOI

Câu 1. (3.0 điểm) Tên chương trình nguồn BAI1.PAS

Cho dãy gồm n số. Tìm dãy con có tổng lớn nhất

\* Dữ liệu vào: - Dòng 1: ghi số N \<=100

\- Dòng 2: ghi N số nguyên. Các phần tử có giá trị không quá 107 cách
nhau một dấu trống.

\* Dữ liệu ra: Ghi tổng lớn nhất tìm được

DAPAN

DÃY CON CÓ TỔNG LỚN NHẤT

type mang=array\[1..100\] of longint;

var n,i,j,max:integer;

a:mang;

t:text;

function tong(a:mang;dau,cuoi:byte):longint;

var i:integer;

S:longint;

begin

S:=0;

for i:=dau to cuoi do

S:=S+a\[i\];

tong:=S;

end;

Begin

assign(t,\'Bai2.INP\');

reset(t);

readln(t,n);

for i:=1 to n do

read(t,a\[i\]);

close(t);

assign(t,\'Bai2.OUT\');

rewrite(t);

max:=a\[1\];

for i:=1 to n-1 do

for j:=i+1 to n do

if max\<tong(a,i,j) then max:=tong(a,i,j);

write(t,max);

close(t);

End.
