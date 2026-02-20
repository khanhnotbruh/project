Vũ Văn Lưu -- THPT Toàn Thắng

CAUHOI

**Bài 3: xếp gạch**

Một đại lí bán gạch men cần xây dựng lại cửa hàng trưng bày. Hiện tại
đại lí này có N viên gạch men với nhiều chủng loại khác nhau, của nhiều
hãng với nhiều chất liệu khác nhau. Tuy nhiên những viên gạch này lại có
quy cách giống nhau: Đều có bề mặt là hình vuông và có chiều cao bằng
nhau. Viên gạch bé nhất là có quy cách là 100mm x 100mm x 10mm. Các viên
gạch hơn nhau 50mm chiều dài tính từ viên gạch bé nhất. Ví dụ viên gạch
thứ nhất có diều dài là 100mm và chiều cao là 10mm thì viên gạch thứ 2
có chiều dài là 150mm và chiều cao là 10mm. Hiện tại cửa hàng có 50 loại
kích thước khác nhau. Họ dự định thuê một diện tích đất nhà bên cạnh để
làm kho chứa tạm số gạch này trong thời gian xây lại cửa hàng. Trước khi
cho số gạch này vào kho họ muốn xếp các viên gạch vào các hộp rồi xếp
gọn các hộp này vào kho chứa tạm. Họ không cần phân loại từng loại gạch
mà chỉ cần xếp các viên gạch cùng kích thước bề mặt vào một loại hộp vừa
với kích thước bề mặt của viên gạch. Mỗi hộp là một khối hộp có mặt đáy
là hình vuông và diện tích bằng với diện tích bề mặt của một viên gạch
nào đó. Mỗi hộp đóng được tối đa 10 viên gạch. Các hộp này có chiều cao
bằng nhau. Bạn hãy giúp họ cần mua ít nhất mỗi loại hộp bao nhiêu cái.

**Dữ liệu vào:** Tệp **BAI3.INP** gồm

Dòng 1: số nguyên n (1≤N≤10^6^) là số viên gạch có trong cửa hàng.

Dòng tiếp theo: ghi N số nguyên dương là chiều dài một cạnh của viên
gạch đang trưng bày. Mỗi số cách nhau một dấu cách.

**Dữ liệu ra:** Tệp **BAI3.OUT** gồm chiều dài một cạnh của hộp và số
lượng hộp tương ứng. Các hộp này được sắp xếp từ lớn tới bé theo chiều
dài cạnh hộp. Mỗi cặp số trên một dòng và cách nhau một dấu cách.

Ví dụ:

+------------------------------+---------------------------------------+
| **BAI3.INP**                 | **BAI3.OUT**                          |
+==============================+=======================================+
| 5                            | 200 1                                 |
|                              |                                       |
| 100 100 200 150 200          | 150 1                                 |
|                              |                                       |
|                              | 100 1                                 |
+------------------------------+---------------------------------------+

***Các ràng buộc:***

*30% số test tương ứng với 30% số điểm có n≤ 10^3^;*

*30% số test tương ứng với 30% số điểm có 10^3^\<n≤10^4^;*

*20% số test tương ứng với 20% số điểm có 10^4^\<n≤10^5^;*

*20% số test tương ứng với 20% số điểm có 10^5^\<n≤10^6^;*

DAPAN

**Lời giải tham khảo:**

**Sub 1:**

Program bai3;

var f1,f2:text;

n,i,j,sh,sl:longint;

d,l:array\[1..1000000\] of longint;

BEGIN

assign(f1,\'bai3.inp\');reset(f1);

assign(f2,\'bai3.out\');rewrite(f2);

readln(f1,n);

d\[1\]:=100;

for i:=2 to 50 do d\[i\]:=d\[i-1\]+50;

for i:=1 to n do read(f1, l\[i\]);

for i:=50 downto 1 do

begin

sl:=0;

for j:=1 to n do if d\[i\]=l\[j\] then inc(sl);

sh:=sl div 10;

if sl mod 10 \>0 then inc(sh);

if sh\>0 then writeln(f2, d\[i\], \' \',sh);

end;

close(f1);close(f2);

END.

\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--

**Sub2:**

Program bai3;

var f1,f2:text;

n,i,j,l,h:longint;

a,sh:array\[1..2550\] of longint;

BEGIN

assign(f1,\'bai3.inp\');reset(f1);

assign(f2,\'bai3.out\');rewrite(f2);

readln(f1,n);

for i:=1 to 2550 do a\[i\]:=0;

for i:= 1 to n do

begin

read(f1,l);

inc(a\[l\]);

end;

for i:=2550 downto 1 do

begin

sh\[i\]:=a\[i\] div 10;

if a\[i\] mod 10 \> 0 then inc(sh\[i\]);

if sh\[i\] \>0 then writeln(f2, i,\' \',sh\[i\]);

end;

close(f1);close(f2);

END.

\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--

**Sub 3:**

ar f1,f2:text;

n,i,j,sh,sl:longint;

d:array\[1..1000000\] of longint;

procedure sort(l,r: longint);

var

i,j,x,y: longint;

begin

i:=l; j:=r;

x:=d\[(l+r) div 2\];

repeat

while d\[i\]\>x do inc(i);

while x\>d\[j\] do dec(j);

if not(i\>j) then

begin

y:=d\[i\];

d\[i\]:=d\[j\];

d\[j\]:=y;

inc(i);

j:=j-1;

end;

until i\>j;

if l\<j then sort(l,j);

if i\<r then sort(i,r);

end;

BEGIN

assign(f1,\'bai3.inp\');reset(f1);

assign(f2,\'bai3.out\');rewrite(f2);

readln(f1,n);

for i:=1 to n do read(f1, d\[i\]);

sort(1,n);

for i:=1 to n do

if d\[i\]\<\>0 then

begin

sl:=1;

for j:=i+1 to n do if d\[i\]=d\[j\] then

begin

inc(sl);

d\[j\]:=0;

end;

sh:= sl div 10;

if sl mod 10 \>0 then inc(sh);

writeln(f2, d\[i\],\' \',sh);

d\[i\]:=0;

end;

close(f1);close(f2);

END.

\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--

**Sub 4:**

var f1,f2:text;

n,i,j,sh,sl:longint;

d:array\[1..1000000\] of longint;

procedure sapxep;

var tg:longint;

begin

for i:=1 to n-1 do

for j:=i+1 to n do

if d\[i\]\<d\[j\] then

begin

tg:=d\[i\];

d\[i\]:=d\[j\];

d\[j\]:=tg;

end;

end;

BEGIN

assign(f1,\'bai3.inp\');reset(f1);

assign(f2,\'bai3.out\');rewrite(f2);

readln(f1,n);

for i:=1 to n do read(f1, d\[i\]);

sapxep;

for i:=1 to n do

if d\[i\]\<\>0 then

begin

sl:=1;

for j:=i+1 to n do if d\[i\]=d\[j\] then

begin

inc(sl);

d\[j\]:=0;

end;

sh:= sl div 10;

if sl mod 10 \>0 then inc(sh);

writeln(f2, d\[i\],\' \',sh);

d\[i\]:=0;

end;

close(f1);close(f2);

END.
