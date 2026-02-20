Vũ Văn Lưu -- THPT Toàn Thắng

CAUHOI

**Bài 4:** **Camera (10 điểm)**

Ông Minh vừa mua một trang trại hình chữ nhật trên một quả đồi có diện
tích rất rộng. Ông đầu tư xây dựng một hàng rào bảo vệ bằng dây thép gai
bao quanh trang trại nhà ông. Dây thép gai được gắn vào các cột bê tông
rất chắc chắn dọc theo các cạnh trang trại nhà ông. Một lần ông đi quanh
trang trại, ông nhận thấy một mặt của trang trại tiếp giáp với khu vực
có an ninh không tốt. Ông muốn gắn các camera theo giám sát trên các cây
cột ở hàng rào thép gai. Hàng rào này có n cây cột được cắm không đồng
đều về khoảng cách nhưng khoảng cách tối thiểu giữa hai cây cạnh nhau là
1 đơn vị chiều dài. Ông sử dụng một thiết bị chuyên dụng đo được chính
xác khoảng cách từ các cột đến đầu trang trại. Cột thứ i nằm cách đầu
trang trại x~i~ đơn vị chiều dài. Hiện tại, Ông có m cái camera. Ông
muốn mắc hết số camera này lên các các cây cột. Mỗi camera gắn vào một
cây cột. Tuy nhiên, ông muốn bố trí sao cho khoảng cách tối thiểu giữa
bất kì hai camera nào trong số m camera khoảng cách càng lớn càng tốt.

**Yêu cầu**: hãy tìm cách bố trí các camera vào các cây cột sao cho
khoảng cách tối thiểu giữa hai camera bất kì là lớn nhất.

***Dữ liệu vào:*** Cho từ tệp **BAI4.INP** có dạng:

\- ***Dòng thứ nhất***: Ghi hai số nguyên n, m (2≤ m ≤ n ≤ 10^6^) n là
số cây cột, m là số camera.

\- ***Dòng thứ hai:*** Ghi n số nguyên x~1~, x~2~,\...,x~n~ (1 ≤ x~1~ \<
x~2~ \<\...\< x~n~ ≤ 10^9^) là khoảng cách từ cột thứ i đến đầu trang
trại.

Các số trên cùng một dòng ghi cách nhau ít nhất một dấu cách

***Dữ liệu ra:*** Ghi vào tệp văn bản **BAI4.OUT** một số nguyên duy
nhất là khoảng cách tối thiểu lớn nhất khi bố trí các camera vào các
cột.

Ví dụ:

+----------------------+-------------+--------------------------------+
| **BAI4.INP**         | *           | **Giải thích ví dụ:**          |
|                      | *BAI4.OUT** |                                |
+======================+=============+================================+
| 6 3                  | 3           | Các camera được gắn vào các    |
|                      |             | cột 1, 4, 6. Hai camera gần    |
| 1 2 3 4 8 9          |             | nhất ở cột 1 và cột 4 có       |
|                      |             | khoảng cách là 3.              |
+----------------------+-------------+--------------------------------+
| 10 4                 | 5           | Các camera được gắn vào các    |
|                      |             | cột 1, 4, 7, 10. Hai camera    |
| 4 5 7 10 13 14 15 18 |             | gần nhất là cột 4 và cột 7 có  |
| 19 21                |             | khoảng cách là 5.              |
+----------------------+-------------+--------------------------------+

**Ràng buộc dữ liệu:**

*- 40% số test tương ứng với 40% số điểm có (1\<n≤10^3^);*

*- 40% số test tương ứng với 40% số điểm có (10^3^\<n≤10^5^);*

*- 20% số test tương ứng với 20% số điểm có (10^5^\<n≤10^6^).*

DAPAN

Lời giải tham khảo:

program bai4;

var f1,f2:text;

a:array\[1..1000000\]of longint;

n,i,m,dmax,dau,cuoi,giua:longint;

function tim(gt:longint):boolean;

var j,t,dem:longint;

begin

tim:=false;

j:=n; dem:=0;

for t:=n-1 downto 1 do

begin

if a\[j\]-a\[t\]\>= gt then

begin

inc(dem);

j:=t;

end;

if dem=m-1 then exit(true);

end;

end;

begin

assign(f1,\'bai4.inp\');reset(f1);

assign(f2,\'bai4.out\');rewrite(f2);

readln(f1,n,m);

for i:=1 to n do read(f1,a\[i\]);

dmax:=(a\[n\]-a\[1\]) div (m-1);

close(f1);

dau:=1; cuoi:=dmax; giua:=(dau+cuoi) div 2;

while dau\<cuoi-1 do

begin

if tim(giua) then

dau:=giua

else cuoi:=giua-1;

giua:=(dau+cuoi) div 2;

end;if tim(cuoi) then write(f2,cuoi) else

writeln(f2,dau);

close(f2);

end.

............................................

Sub2

program bai4;

var f1,f2:text;

a:array\[1..1000000\]of longint;

n,i,t,vt,ans,g,m:longint;

ok:boolean;

begin

assign(f1,\'bai4.inp\');reset(f1);

assign(f2,\'bai4.out\');rewrite(f2);

readln(f1,n,m);

for i:=1 to n do read(f1,a\[i\]);

close(f1);

ans:= (a\[n\]-a\[1\]) div (m-1);

ok:=false;

while ok =false do

begin

i:=n-1;

vt:=i+1;

g:=m-1;

while i\>0 do

begin

if a\[vt\]-a\[i\] \>=ans then

begin

vt:=i;

dec(i);

dec(g);

end

else dec(i);

end;

if g=0 then begin ok:=true; break; end

else dec(ans);

end;

write(f2,ans);

close(f2);

end.

....................................

Sub3

program bai4;

var f1,f2:text;

a:array\[1..1000000\]of longint;

n,i,t,vt,ans,g,m:longint;

ok:boolean;

begin

assign(f1,\'bai4.inp\');reset(f1);

assign(f2,\'bai4.out\');rewrite(f2);

readln(f1,n,m);

for i:=1 to n do read(f1,a\[i\]);

close(f1);

ans:= a\[n\]-a\[1\];

ok:=false;

while ok =false do

begin

i:=n-1;

vt:=i+1;

g:=m-1;

while i\>0 do

begin

if a\[vt\]-a\[i\] \>=ans then

begin

vt:=i;

dec(i);

dec(g);

end

else dec(i);

end;

if g=0 then begin ok:=true; break; end

else dec(ans);

end;

write(f2,ans);

close(f2);

end.

...............................................

Sub4

program bai4;

var fi,fo:text;

i,n,m,vt,g,tb,kc,kcmax,ans:longint;

a:array\[1..1000000\] of longint;

ok:boolean;

begin

assign(fi,\'bai4.inp\'); reset(fi);

assign(fo,\'bai4.out\'); rewrite(fo);

readln(fi,n,m);

read(fi,a\[1\]);ans:=n;

for i:=2 to n do

begin

read(fi,a\[i\]);

kc:=a\[i\]-a\[i-1\];

if kc\<ans then ans:=kc;

end;

ok:=true;

while ok=true do

begin

i:=2;vt:=1;g:=m-1;

while (i\<=n) do

begin

if a\[i\]-a\[vt\] \>=ans then

begin

dec(g);

vt:=i;

inc(i);

end else inc(i);

if g=0 then break;

end;

if g=0 then

inc(ans)

else ok:=false;

end;

write(fo,ans-1);

close(fi); close(fo);

end.
