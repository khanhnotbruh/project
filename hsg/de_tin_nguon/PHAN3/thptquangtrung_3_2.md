Trần Thị Ngọc Ánh -- THPT Quang Trung

CÂU HỎI

**Siêu thị**

Là một nhà quản lí trong siêu thị BigC, hàng tháng anh Hiệp phải thống
và sắp xếp lại danh sách khách hàng theo số lần đến mua giảm dần để phục
vụ phân nhóm khách hàng (Vip, tiềm năng, vãng lai...), từ đó tư vấn cho
giám đốc chế độ ưu đãi với từng đối tượng khách hàng. Mỗi khách hàng đến
mua tại siêu thị đều có một số hiệu riêng A~i~ (1\<=A~i~\<=10^4^, trong
một tháng mỗi khách hàng có thể đến rất nhiều lần, có thể không đến lần
nào, tổng số lần đến của tất cả khách trong tháng không bao giờ vượt quá
10^9^). Anh Hiệp gặp rất nhiều khó khăn, mất rất nhiều thời gian vì phải
thống kê thủ công, số liệu đưa ra của anh cũng không chính xác hoàn
toàn. Các em trong đội tuyển lập trình trường THPT Quang Trung hãy lập
trình giúp anh Hiệp giải bài toán này.

\- Tệp dữ liệu vào (sieuthi.inp) gồm:

Dãy A1, A2, ..., An (1\<=n\<=10^6^, \|A~i~\|\<=10^4^), mỗi số trên một
dòng tương ứng với số hiệu của khách hàng đến siêu thị.

\- Tệp dữ liệu ra (sieuthi.out) gồm:

Danh sách khách hàng gồm số hiệu và số lần đến siêu thị, thông tin mỗi
khách trên một dòng. Danh sách này được sắp xếp giảm dần theo số lần đến
(nếu có nhiều khách cùng số lần đến mua thì khách có số hiệu nhỏ hơn
đứng trước).

Vd:

+-----------------------------------+-----------------------------------+
| Sieuthi.inp                       | Sieuthi.out                       |
+===================================+===================================+
| 2                                 | 2 3                               |
|                                   |                                   |
| 3                                 | 1 2                               |
|                                   |                                   |
| 1                                 | 3 1                               |
|                                   |                                   |
| 4                                 | 4 1                               |
|                                   |                                   |
| 2                                 | 6 1                               |
|                                   |                                   |
| 1                                 |                                   |
|                                   |                                   |
| 2                                 |                                   |
|                                   |                                   |
| 6                                 |                                   |
+-----------------------------------+-----------------------------------+

\- Sub 1: 0 ≤ n ≤ 10^4^

\- Sub 2: 0 ≤ n ≤ 10^6^

ĐÁP ÁN

uses math;

const fi=\'sieuthi.inp\';

fo=\'sieuthi.out\';

var n,temp:longint;

a,b:array\[1..10000\] of longint;

procedure doc;

var f1:text;

x,i:longint;

begin

assign(f1,fi); reset(f1);

fillchar(a ,sizeof(a), 0);

for i:=1 to 10000 do

b\[i\]:=i; temp:=0;

while not eof(f1) do

begin

readln(f1,x);

temp:=max(temp,x);

inc(a\[x\]);

end;

close(f1);

end;

procedure swap(i,j:longint);

var tmp:longint;

begin

tmp:=a\[i\]; a\[i\]:=a\[j\]; a\[j\]:=tmp;

tmp:=b\[i\]; b\[i\]:=b\[j\]; b\[j\]:=tmp;

end;

procedure sort(d,c:longint);

var k,i,j:longint;

begin

i:=d; j:=c; k:=a\[(i+j) div 2\];

repeat

while a\[i\]\>k do inc(i);

while a\[j\]\<k do dec(j);

if i\<=j then

begin

swap(i,j);

inc(i); dec(j);

end;

until i\>j;

if d\<j then sort(d,j);

if i\<c then sort(i,c);

end;

procedure qsort(d,c:longint);

var k,i,j,tmp:longint;

begin

i:=d; j:=c; k:=b\[(i+j) div 2\];

repeat

while b\[i\]\<k do inc(i);

while b\[j\]\>k do dec(j);

if i\<=j then

begin

tmp:=b\[i\];

b\[i\]:=b\[j\];

b\[j\]:=tmp;

inc(i); dec(j);

end;

until i\>j;

if d\<j then qsort(d,j);

if i\<c then qsort(i,c);

end;

procedure xuli;

var f2:text;

i,st,j:longint;

begin

assign(f2,fo); rewrite(f2);

st:=1;

for i:=1 to temp do

if a\[i\]=0 then break

else if a\[i\]\<\>a\[i+1\] then begin

qsort(st,i);

for j:=st to i do writeln(f2,b\[j\],\' \',a\[j\]);

st:=i+1;

end;

close(f2);

end;

BEGIN

doc;

sort(1,10000);

xuli;

END.
