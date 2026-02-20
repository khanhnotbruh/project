Nguyễn Trí Dũng -- THPT Kiến An

CAUHOI

**Bài 3:** **Tỉa mảng** (5.0 điểm)

Cho dãy số nguyên a gồm n phần tử và dãy số nguyên b gồm m phần tử
(m\<=n). Các phần tử của dãy a và b có kiểu nguyên.

Yêu cầu: có thể xóa (gạch) khỏi dãy a một số phần tử sao cho các phần tử
còn lại (giữ nguyên trật tự ban đầu) chính là dãy b.

Dữ liệu: Vào cho trong tệp TIA.INP:

\- Dòng thứ nhất: Ghi giá trị hai số n, m tương ứng với số lượng phần tử
trong dãy a và dãy b (1\<=n, m \<=150).

\- Dòng thứ 2: Ghi giá trị các phần tử của dãy a.

\- Dòng thứ 3: Ghi giá trị các phần tử của dãy b.

Các phần tử trên cùng một dòng được ghi cách nhau duy nhất một dấu cách
trống.

Kết quả: Ghi ra tệp TIA.OUT: Có 2 trường hợp

\- Trường hợp 1 (thực hiện được): Dòng đầu ghi 'CO'; dòng thứ hai ghi vị
trí các phần tử bị xóa trong dãy a. Các vị trí này được ghi cách nhau
duy nhất bởi một dấu cách trống.

\- Trường hợp 2 (không thực hiện được): Ghi 'KHONG'

**Ví dụ**:

+-----------------------------------+-----------------------------------+
| **TIA.INP**                       | **TIA.OUT**                       |
+===================================+===================================+
| 6 4                               | CO                                |
|                                   |                                   |
| 6 15 8 75 8 9                     | 2 5                               |
|                                   |                                   |
| 6 8 75 9                          |                                   |
+-----------------------------------+-----------------------------------+
| 6 4                               | KHONG                             |
|                                   |                                   |
| 15 6 7 8 9 30                     |                                   |
|                                   |                                   |
| 6 8 9 7                           |                                   |
+-----------------------------------+-----------------------------------+

DAPAN

const

f1=\'tia.inp\';

f2=\'tia.out\';

var

a,b,c:array\[1..150\] of integer;

n,m,dem:byte;

f:text;

procedure nhap;

var i:byte;

begin

assign(f,f1);

reset(f);

read(f,n);

read(f,m);

for i:=1 to n do

read(f,a\[i\]);

for i:=1 to m do

read(f,b\[i\]);

close(f);

end;

procedure xuli;

var i,j:byte;

co:boolean;

begin

assign(f,f2);

rewrite(f);

dem:=0;

for i:=1 to n do

if a\[i\]\<\>b\[i\] then

begin

c\[dem+1\]:=i+dem;

inc(dem);

for j:=i to n do

begin

a\[j\]:=a\[j+1\];

end;

end;

for i:=1 to m do

if b\[i\]\<\>a\[i\] then

begin

co:=FALSE;

break;

end

else

co:=TRUE;

if co=TRUE then

begin

writeln(f,\'CO\');

for j:=1 to dem do

write(f,c\[j\],\' \');

end

else

writeln(f,\'KHONG\');

close(f)

end;

begin

nhap;

xuli;

end.
