**Vũ Ngọc Hà -- THPT Trần Hưng Đạo**

**CAUHOI**

**Bài 4: Dự trữ nước** (10 điểm)

Qua trận mưa lịch sử vừa rồi Bờm biết rằng đến mùa khô năm nay thể nào
cũng có hạn hán nên Bờm quyết định dự trữ nước. Bờm có N thùng dự trữ
nước, do các thùng mua làm nhiều đợt nên chúng có các kích thước khác
nhau, mỗi thùng có sức chứa C~i­~ (1\<=i\<=N \<=1000; 1\<=C~i~\<=1000).
Bờm quyết định sẽ đổ đầy các thùng, sau khi kiểm tra thấy một số thùng
còn đầy, một số thùng đã hết, một số thùng còn một phần. Bờm quyết định
san các thùng còn một phần lại với nhau để các thùng phải mang đi lấy
nước là ít nhất.

**Yêu cầu**: Cho số lượng thùng, dung tích chứa và lượng nước còn lại
của từng thùng. Hãy giúp Bờm xác định số lượng thùng ít nhất phải mang
đi.

**Dữ liệu vào**: Từ file văn bản 'BAI4.INP'

Dòng 1: Số N

Dòng thứ i+1 trong N dòng tiếp theo cho 2 số nguyên B~i~ và C~i~ cho
biết lượng nước còn lại và dung tích thùng thứ i (1\<=i\<=N).

**Dữ liệu ra**: Từ file văn bản 'BAI4.OUT' chứa một số duy nhất là số
lượng thùng ít nhất cần phải mang đi.

**ví dụ**:

+---------------------------------+------------------------------------+
| **BAI4.INP**                    | **BAI4.OUT**                       |
+---------------------------------+------------------------------------+
| 4                               | 2                                  |
|                                 |                                    |
| 0 1                             |                                    |
|                                 |                                    |
| 3 5                             |                                    |
|                                 |                                    |
| 0 2                             |                                    |
|                                 |                                    |
| 1 2                             |                                    |
+---------------------------------+------------------------------------+

(***Giải thích***: Đổ nước từ thùng 2 sang các thùng 1; 4; khi đó các
thùng 1 và 4 đầy, thùng 3 không có nước, thùng 2 chưa đầy. Mang thùng 2,
3 đi lấy nước).

DAP AN

const

fi=\'bai4.inp\';

fo=\'bai4.out\';

type mang=array\[1..1000\] of integer;

var

f1,f2:text;

a,b:mang;

i,n:integer;

procedure qsort(var a:mang);

procedure sort(l,r:longint);

var

i,j,x,y:longint;

begin

i:=l;

j:=r;

x:=a\[(l+r) div 2\];

repeat

while a\[i\]\<x do inc(i);

while x\<a\[j\] do dec(j);

if i\<=j then

begin

y:=a\[i\];

a\[i\]:=a\[j\];

a\[j\]:=y;

inc(i);

dec(j);

end;

until i\>j;

if l\<j then sort(l,j);

if i\<r then sort(i,r);

end;

begin

sort(1,n);

end;

procedure thungnuoc;

var

sum,i,d:longint;

c:mang;

begin

sum:=0;

for i:=1 to n do sum:=sum+a\[i\];

for i:=1 to n do c\[i\]:=0;

qsort(b);

i:=1;

while sum\>0 do

begin

inc(c\[i\]);

dec(sum);

if c\[i\]=b\[i\] then inc(i);

end;

d:=0;

for i:=1 to n do

if c\[i\]\<\>b\[i\] then inc(d);

writeln(f2,d);

end;

begin

assign(f1,fi);

reset(f1);

assign(f2,fo);

rewrite(f2);

readln(f1,n);

for i:=1 to n do readln(f1,a\[i\],b\[i\]);

thungnuoc;

close(f1);

close(f2);

end.
