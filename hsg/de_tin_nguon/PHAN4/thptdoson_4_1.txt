Phạm Minh Khôi -- THPT Đồ Sơn

CAUHOI

**Bài 4. SO SÁNH**

Cho mảng $X\lbrack\rbrack$ gồm n phần tử và mảng $Y\lbrack\rbrack$ gồm m
phần tử. Hãy đếm số các cặp $x^{y} > y^{x}$, trong đó
$x_{i} \in X\lbrack\rbrack$ và $y_{i} \in Y\lbrack\rbrack.$

Dữ liệu: Vào từ file BAI4.INP:

\- Dòng đầu tiên đưa vào số lượng bộ test T;

\- Những dòng kế tiếp đưa vào $T$ bộ test. Mỗi bộ test gồm ba dòng: Dòng
đầu tiên đưa vào n, m tương ứng với số phần tử của mảng
$X\lbrack\rbrack$ và $Y\lbrack\rbrack$; dòng tiếp theo là n số
$x\lbrack i\rbrack$ của mảng $X\lbrack\rbrack$; dòng cuối cùng là m số
$y\lbrack i\rbrack$ của mảng $Y\lbrack\rbrack$; các số được viết cách
nhau một vài khoảng trống.

$T,n,m,X\lbrack i\rbrack,Y\lbrack j\rbrack$ thỏa mãn ràng buộc:
$1 < T < 100;1 < n,m < 10^{4};0 < X\lbrack i\rbrack,Y\lbrack j\rbrack < 10^{3}$.

Ghi kết quả ra file BAI4.OUT số duy nhất là số cặp thỏa mãn đếm được.
Mỗi test một dòng.

+---------------------------------+---------+-------------------------+
| BAI4.INP                        | B       | Giải thích              |
|                                 | AI4.OUT |                         |
+=================================+=========+=========================+
| 1                               | 3       | $$(2,\ 1                |
|                                 |         | ),\ (2,\ 5),\ (6,\ 1)$$ |
| 3 2                             |         |                         |
|                                 |         |                         |
| 2 1 6                           |         |                         |
|                                 |         |                         |
| 1 5                             |         |                         |
+---------------------------------+---------+-------------------------+
| 2                               | 3       | $$(2,\ 1                |
|                                 |         | ),\ (2,\ 5),\ (6,\ 1)$$ |
| 3 2                             | 5       |                         |
|                                 |         | $                       |
| 2 1 6                           |         | $(2,\ 1),\ (2,\ 5),\ (6 |
|                                 |         | ,\ 1),\ (4,\ 1),(4,5)$$ |
| 1 5                             |         |                         |
|                                 |         |                         |
| 4 3                             |         |                         |
|                                 |         |                         |
| 2 1 6 4                         |         |                         |
|                                 |         |                         |
| 1 5 2                           |         |                         |
+---------------------------------+---------+-------------------------+

DAPAN

**Bài 4 (9 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu**                               |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 4 | 1  | 1   |                                                 |
|       | -9 |     |                                                 |
| (9    |    |     |                                                 |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+

Program Bai3;

const

fi=\'bai4.inp\';

fo=\'bai4.out\';

var x,y:array\[1..1000001\] of longint;

t,m,n,i,q:longint;

cnt:array\[0..4\] of longint;

Procedure nhap;

var i:longint;

Begin

assign(input,fi);

reset(input);

assign(output,fo);

rewrite(output);

readln(input,t);

end;

procedure QuickSort(l,r:LongInt);

var i,j,x,tg:longint;

begin

i:=l;

j:=r;

x:=y\[(l+r) div 2\];

repeat

while y\[i\]\<x do inc(i);

while y\[j\]\>x do dec(j);

if i\<=j then

begin

tg:=y\[i\];

y\[i\]:=y\[j\];

y\[j\]:=tg;

inc(i);dec(j);

end;

until i\>j;

If l\<j then QuickSort(l,j);

If i\<r then QuickSort(i,r);

end;

function findx(l,r,x:longint):longint;

var res,m:longint;

Begin

res:=-1;

While l\<=r do

Begin

m:=(l+r) div 2;

if y\[m\]\>x then

begin

res:=m-1;

r:=m-1;

end

else l:=m+1;

End;

findx:=res;

end;

function find1(x:longint):longint;

var res,mid,l,r:longint;

Begin

res:=-1;

for mid:=1 to m do

if y\[mid\]\<=x then res:=mid

else break;

find1:=res;

end;

function dem(x:longint):longint;

var ans,i1:longint;

Begin

if x=0 then exit(0);

if x=1 then exit(cnt\[0\]);

ans:=cnt\[0\]+cnt\[1\];

i1:=findx(1,m,x);

if i1\<\>-1 then ans:= ans + m - i1;

if x=2 then ans:=ans-cnt\[3\]-cnt\[4\];

if x=3 then ans:=ans+cnt\[2\];

dem:=ans;

End;

procedure calc;

var i,j:longint;

ans:int64;

begin

readln(input,n,m);

fillchar(cnt,sizeof(cnt),0);

for i:=1 to n do read(input, x\[i\]);

readln(input);

for i:=1 to m do

Begin

read(input, y\[i\]);

if y\[i\]\<=4 then inc(cnt\[y\[i\]\]);

end;

readln(input);

QuickSort(1,m);

ans:=0;

for i:=1 to N do

Begin

ans:=ans + dem(x\[i\]);

End;

writeln(output,ans);

end;

Begin

nhap;

for q:=1 to t do calc;

end.
