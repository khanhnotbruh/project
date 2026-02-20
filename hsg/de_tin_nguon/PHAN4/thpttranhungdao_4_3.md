**Vũ Ngọc Hà -- THPT Trần Hưng Đạo**

**CAUHOI**

**Bài 4**: **Phân lớp** (10 điểm)

Gọi S(x) là số ước của số nguyên dương x. Hai số nguyên dương x và y
được gọi là hai số cùng lớp k nếu S(x) = S(y) = k.

Ví dụ: S(6) = 4 vì 6 có bốn ước là 1, 2, 3 và 6.

S(8) = 4

S(7) = 2

S(13) = 2

Như vậy: 6 và 8 là hai số thuộc lớp 4; 7 và 13 là hai số thuộc lớp 2.

Cho n số nguyên a~1~, a~2~, ..., a~n~. Hãy cho biết:

a\) Các số đã cho được chia thành bao nhiêu lớp khác nhau.

b\) Số lượng phần tử trong mỗi lớp là bao nhiêu?

**Dữ liệu**: Vào từ file văn bản **Bai4.inp** gồm:

\- Dòng đầu tiên chứa số nguyên n (1\<=n\<=1000).

\- Dòng tiếp theo là là số nguyên dương a~1~, a~2~, ..., a~n~. *Có thể
viết trên nhiều dòng, mỗi số được viết cách nhau ít nhất một dấu cách
(1\<=a~i~\<=65530).*

**Kết quả**: Ghi ra file văn bản **Bai4.out** có:

\- Dòng đầu tiên chứa số lớp S tìm được.

\- Tiếp đến là S dòng, mỗi dòng chứa hai giá trị k và d *(trong đó k là
số ước của các số trong lớp, d là số phần tử có trong lớp k. Mỗi số viết
cách nhau ít nhất một dấu cách).*

**Ví dụ:**

+---------------------------------------+------------------------------+
| **Bai4.inp**                          | **Bai4.out**                 |
+---------------------------------------+------------------------------+
| 5                                     | 2                            |
|                                       |                              |
| 6 2 13                                | 2 3                          |
|                                       |                              |
| 7 8                                   | 4 2                          |
+---------------------------------------+------------------------------+

DAP AN

const

fi=\'bai4.inp\';

fo=\'bai4.out\';

type mang=array\[1..1000\] of longint;

var

a,b,k:mang;

i,n:longint;

f1,f2:text;

function uoc(n:longint):longint;

var

d,i:longint;

begin

d:=0;

for i:=1 to n do

if (n mod i = 0) then inc(d);

uoc:=d;

end;

procedure sort(l,r:longint);

var

i,j:longint;

x,y:longint;

begin

i:=l;

j:=r;

x:=b\[(l+r) div 2\];

repeat

while b\[i\]\<x do inc(i);

while x\<b\[j\] do dec(j);

if i\<=j then

begin

y:=b\[i\];

b\[i\]:=b\[j\];

b\[j\]:=y;

inc(i);

dec(j);

end;

until i\>j ;

if l\<j then sort(l,j);

if i\<r then sort(i,r);

end;

procedure demsolop(a:mang);

var

d,d2,i,j,g:longint;

begin

for i:=1 to n do

b\[i\]:=uoc(a\[i\]);

sort(1,n);

d:=0;

k\[1\]:=b\[1\];

j:=1;

for i:=1 to n do

if b\[i\]\<\>b\[i+1\] then

begin

inc(d);

inc(j);

k\[j\]:=b\[i+1\];

end;

writeln(f2,d);

for i:=1 to j-1 do

begin

d2:=0;

for g:=1 to n do

if k\[i\]=b\[g\] then inc(d2);

writeln(f2,k\[i\],#32,d2);

end;

end;

begin

assign(f1,fi);

reset(f1);

assign(f2,fo);

rewrite(f2);

readln(f1,n);

while not eoln(f1) do

for i:=1 to n do read(f1,a\[i\]);

demsolop(a);

close(f1);

close(f2);

end.
