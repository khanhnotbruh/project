Nguyễn Đức Hải -- THPT Quang Trung

CÂU HỎI

Sắp xếp

Cho dãy số nguyên a\[1..n\] (n\<=10000, ai\<=100000). Hãy sắp xếp theo
thứ tự giảm dần của tổng các thừa số nguyên tố của chúng?

\* Tệp dl vào sortnt.inp gồm:

\- dòng đầu là số nguyên n

\- dòng sau là n số nguyên ai

\* Tệp dl ra sortnt.out gồm:

\- dãy a\[1..n\] được sắp xếp theo thứ tự giảm dần của tổng các thừa số
nguyên tố của các phần tử, nếu tổng này bằng nhau thì phần tử có giá trị
lớn hơn đứng trước.

Ví dụ:

+-----------------------------------+-----------------------------------+
| Sortnt.inp                        | Sortnt.out                        |
+===================================+===================================+
| 6                                 | 11 7 9 8 6 5                      |
|                                   |                                   |
| 6 8 5 7 9 11                      | ( giải thích: 11 tách thành các   |
|                                   | thừa số nguyên tố là 11; 7 =7; 9  |
|                                   | = 3\*3; 8=2\*2\*2; 6=2\*3; 5=5.   |
|                                   | Lấy các thừa số đó cộng lại rồi   |
|                                   | sx theo nó thì được dãy trên)     |
+-----------------------------------+-----------------------------------+

ĐÁP ÁN

const fi=\'sortnt.inp\';

fo=\'sortnt.out\';

var f1,f2:Text;

a,t:array\[1..10001\] of longint;

n:longint;

function tsnt(x:longint):longint;

var i:longint;

begin

i:=2; tsnt:=0;

while x\>1 do

begin

while x mod i=0 do

begin

x:=x div i;

inc(tsnt,i);

end;

inc(i);

end;

end;

procedure sort(l,r:longint);

var tg,x,i,j:longint;

begin

i:=l; j:=r; x:=t\[(l+r) div 2\];

repeat

while x\<t\[i\] do inc(i);

while x\>t\[j\] do dec(j);

if i\<=j then

begin

tg:=t\[i\]; t\[i\]:=t\[j\]; t\[j\]:=tg;

tg:=a\[i\]; a\[i\]:=a\[j\]; a\[j\]:=tg;

dec(j);inc(i);

end;

until i\>j;

if i\<r then sort(i,r);

if l\<j then sort(l,j);

end;

procedure qsort(l,r:longint);

var tg,x,i,j:longint;

begin

i:=l; j:=r; x:=a\[(l+r) div 2\];

repeat

while x\<a\[i\] do inc(i);

while x\>a\[j\] do dec(j);

if i\<=j then

begin

tg:=a\[i\]; a\[i\]:=a\[j\]; a\[j\]:=tg;

dec(j);inc(i);

end;

until i\>j;

if i\<r then sort(i,r);

if l\<j then sort(l,j);

end;

procedure xuat;

var j,vtd,vtc,k:longint;

begin

readln(f1,n);

for j:=1 to n do read(F1,a\[j\]);

for j:=1 to n do t\[j\]:=tsnt(a\[j\]);

sort(1,n);

k:=1;

while k\<=n do

begin

vtd:=k; vtc:=k;

while t\[k\]=t\[k+1\] do

begin

inc(vtc);

inc(k);

end;

inc(k);

if vtd\<\>vtc then qsort(vtd,vtc);

end;

for j:=1 to n do write(f2,a\[j\],\' \');

end;

BEGIN

assign(F1,fi);reset(F1);

assign(F2,fo);rewrite(F2);

xuat;

close(f1);close(f2);

END.
