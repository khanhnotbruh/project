Vũ Văn Lưu -- THPT Toàn Thắng

CAUHOI

**Bài 3: Vận chuyển hàng (8 điểm)**

Một công ty sản xuất hàng hóa cần vận chuyển hàng bằng tàu thủy cần xuất
khẩu một kho hàng. Kho được đóng thành n mặt hàng. Các mặt hàng này được
đóng sẵn trong các kiện hàng có kích thước bằng nhau về chiều dài, chiều
rộng và chiều cao, khối lượng của các kiện hàng lần lượt là a~1~,
a~2~\...,a~n~ tấn. Công ty vận tải đang có chương trình khuyến mãi: Mỗi
chuyến tàu chở đủ m kiện sẽ khuyến mãi một kiện hàng nhỏ nhất không lấy
cước phí vận chuyển. Cước phí vận chuyển một tấn là k (1\<k ≤500). Công
ty sản xuất muốn vận chuyển hết số hàng với lượng cước phí phải trả là
ít nhất. Việc xếp các kiện hàng lên tàu ảnh hưởng rất nhiều đến việc trả
cước phí.

***Yêu cầu:*** Hãy sắp xếp hàng lên tàu để phải trả với cước phí là ít
nhất.

***Dữ liệu vào***: Cho từ tệp văn bản **BAI3.INP** có dạng:

\- Dòng thứ nhất ghi hai số nguyên n ,m, k (1≤ m,n≤10^6^)

\- Dòng thứ hai ghi n số nguyên dương a~1~, a~2~\...,a~n~ (1≤ a~i~ ≤ m ;
i=1..n).

***Dữ liệu ra:*** Ghi vào tệp **BAI3.OUT** gồm một số nguyên duy nhất là
số tiền ít nhất mà Công ty sản xuất cần trả cho Công ty vận tải.

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **BAI3.INP**                      | **BAI3.OUT**                      |
+===================================+===================================+
| 5 3 2                             | 26                                |
|                                   |                                   |
| 4 2 1 5 5                         |                                   |
+-----------------------------------+-----------------------------------+

**Ràng buộc dữ liệu:**

*- 60% số test tương ứng với 60% số điểm có (1\<n,m≤10^4^)*

*- 40% số test tương ứng với 40% số điểm có (10^4^\<n,m≤10^6^)*

DAPAN

Lời giải tham khảo:

program bai3;

var a:array\[1..1000000\] of longint;

f1,f2:text;

k,m,i,j,n:longint;

t:int64;

procedure qsort(l,r: longint);

var x,y: longint;

begin

i:=l;j:=r;

x:=a\[(l+r) div 2\];

repeat

while a\[i\]\>x do inc(i);

while x\>a\[j\] do dec(j);

if not(i\>j) then

begin

y:=a\[i\];

a\[i\]:=a\[j\];

a\[j\]:=y;

inc(i);

j:=j-1;

end;

until i\>j;

if l\<j then qsort(l,j);

if i\<r then qsort(i,r);

end;

begin

assign(f1,\'bai3.inp\');reset(f1);

assign(f2,\'bai3.out\');rewrite(f2);

readln(f1,n,m,k);

for i:=1 to n do read(f1,a\[i\]);

qsort(1,n);

t:=0;

for i:= 1 to n do if i mod m \<\>0 then t:=t+a\[i\]\*k;

writeln(f2,t);

close(f1);close(f2);

end.

**Sub2**

program bai3;

var a,b:array\[1..1000000\] of longint;

f1,f2:text;

k,m,i,j,maxt,n:longint;

t:int64;

begin

assign(f1,\'bai3.inp\');reset(f1);

assign(f2,\'bai3.out\');rewrite(f2);

readln(f1,n,m,k);maxt:=0;

fillchar(a,sizeof(a),0);

for i:=1 to n do

begin

read(f1,t);

if maxt\<t then maxt:=t;

inc(a\[t\]);

end;

i:=maxt;j:=0;t:=0;

while i\>0 do

begin

while a\[i\]\>0 do

begin

inc(j);

b\[j\]:=i;

dec(a\[i\]);

end;

dec(i);

end;

for i:=1 to j do

if i mod m \<\> 0 then t:=t+b\[i\]\*k;

write(f2, t);

close(f1);close(f2);

end.

Sub 3:

program bai3;

var a:array\[1..1000000\] of longint;

f1,f2:text;

k,m,i,j,n:longint;

t:int64;

procedure sort;

var tg:longint;

begin

for i:=1 to n-1 do

for j:=i to n do

if a\[i\]\<a\[j\] then

begin

tg:=a\[i\];

a\[i\]:=a\[j\];

a\[j\]:=tg;

end;

end;

begin

assign(f1,\'bai3.inp\');reset(f1);

assign(f2,\'bai3.out\');rewrite(f2);

readln(f1,n,m,k);

for i:=1 to n do read(f1,a\[i\]);

sort;

t:=0;

for i:= 1 to n do if i mod m \<\>0 then t:=t+a\[i\]\*k;

writeln(f2,t);

close(f1);close(f2);

end.
