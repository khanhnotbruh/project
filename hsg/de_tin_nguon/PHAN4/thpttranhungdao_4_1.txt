**Vũ Ngọc Hà -- THPT Trần Hưng Đạo**

**CAUHOI**

**Bài 4 (10 điểm): Tỉa mảng**

Bài tập: Tỉa mảng (hoàn thành 20/08)

Cho dãy số nguyên a gồm n phần tử và dãy số nguyên b gồm m phần tử
(m\<=n). Các phần tử của a và b có kiểu nguyên.

**[Yêu cầu:]{.underline}** có thể xóa (gạch) khỏi dãy a một số phần tử
sao cho các phần tử còn lại (giữ nguyên trật tự ban đầu) chính là dãy b.

Dữ liệu vào: tệp BAI4.INP:

\- Dòng 1 ghi 2 số n, m là số lượng của 2 dãy a và dãy b (1\<=n,m\<=150)

\- Dòng 2 ghi dãy a.

\- Dòng 3 ghi dãy b.

(các phần tử trên một dòng cách nhau 1 dấu cách)

Dữ liệu ra : tệp BAI4.OUT

\- Ghi 'CO' nếu tìm được , dòng thứ 2 ghi vị trí các phần tử bị xóa
trong dãy a, các số cách nhau 1 dấu cách.

\- Ghi 'KHONG ' nếu không tìm được.

Ví dụ :

+--------------------------------------+-------------------------------+
| BAI4.INP                             | BAI4.OUT                      |
+======================================+===============================+
| 6 4                                  | CO                            |
|                                      |                               |
| 6 15 8 75 8 9                        | 2 5                           |
|                                      |                               |
| 6 8 75 9                             |                               |
+--------------------------------------+-------------------------------+
| 6 4                                  | KHONG                         |
|                                      |                               |
| 15 6 7 8 9 30                        |                               |
|                                      |                               |
| 6 8 7 9                              |                               |
+--------------------------------------+-------------------------------+

DAP AN

const

fi=\'bai4.inp\';

fo=\'bai4.out\';

type mang=array\[1..150\] of longint;

var

f1,f2:text;

n,m,i,j,x:integer;

a,b,c,kq:mang;

procedure tia;

var

i,j,z:longint;

begin

j:=1;

z:=0;

x:=0;

for i:=1 to n do

begin

if a\[i\]=b\[j\] then

begin

inc(z);

kq\[z\]:=a\[i\];

inc(j);

end

else

begin

inc(x);

c\[x\]:=i;

end;

end;

end;

function sosanh:boolean;

var

i:longint;

begin

tia;

for i:=1 to m do

if b\[i\]\<\>kq\[i\] then exit(false);

exit(true);

end;

begin

assign(f1,fi);

reset(f1);

assign(f2,fo);

rewrite(f2);

readln(f1,n,m);

for i:=1 to n do read(f1,a\[i\]);

readln(f1);

for i:=1 to m do read(f1,b\[i\]);

if sosanh then

begin

writeln(f2,\'CO\');

for j:=1 to x do write(f2,c\[j\],#32);

end

else write(f2,\'KHONG\');

close(f1);

close(f2);

end.
