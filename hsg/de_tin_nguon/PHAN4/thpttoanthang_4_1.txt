Vũ Văn Lưu -- THPT Toàn Thắng

CAUHOI

**Bài 4: ước chung lớn nhất:**

Cho dãy A gồm N số nguyên dương (1≤N≤10^6^) được tạo ra theo quy luật
1,3,5,7,9,11,13,...

Hãy tìm trong dãy A cặp số có ước chung lớn nhất là lớn nhất.

**Dữ liệu vào**: Tệp **BAI4.INP** chứa duy nhất số nguyên dương N

**Dữ liệu ra**: Tệp văn bản **BAI4.OUT** số nguyên duy nhất là ước chung
lớn nhất của cặp số có ước chung lớn nhất là lớn nhất.

Ví dụ:

  -----------------------------------------------------------------------
  **BAI4.INP**                        **BAI4.OUT**
  ----------------------------------- -----------------------------------
  10                                  5

  20                                  13
  -----------------------------------------------------------------------

***Các ràng buộc:***

*30% số test tương ứng với 30% số điểm có n≤10^3^;*

*30% số test tương ứng với 30% số điểm có 10^3^\<n≤10^4^;*

*20% số test tương ứng với 20% số điểm có 10^4^\<n≤10^5^;*

*20% số test tương ứng với 20% số điểm có 10^5^\<n≤10^6^;*

DAPAN

Lời giải tham khảo:

Sub 1:

program bai4;

var

a,b:array\[1..2000000\] of longint;

f1,f2:text;

n,i,j,max,t,p:longint;

procedure sang;

var l:longint;

begin

l:= 2\*n ;b\[1\]:=1;

for i:=2 to l do b\[i\]:=0;

for i:= 2 to trunc(sqrt(l)) do

if b\[i\]=0 then

begin

j:= i\*i;

while j\<=l do

begin

b\[j\]:=1;

j:=j+i;

end;

end;

end;

function unt(q:longint):longint;

var x:longint;

begin

x:=3;

unt:=1;

while q\>=x do

begin

while (q mod x\<\>0) and (q\>=x) do inc(x,2);

if q mod x =0 then exit (q div x);

end;

end;

begin

assign(f1,\'bai4.inp\');reset(f1);

assign(f2,\'bai4.out\');rewrite(f2);

readln(f1,n);a\[1\]:=1; max:=1;

sang;

for i:=2 to n do a\[i\]:=a\[i-1\]+2;

for i:=n div 3 to n do if b\[a\[i\]\]\<\>0 then

begin

t:=unt(a\[i\]);

if t\>max then max:=t;

end;

writeln(f2,max);

close(f1);

close(f2);

end.

Sub 2:

program bai4;

var

a:array\[1..2000000\] of longint;

f1,f2:text;

n,i,j,max,t:longint;

function unt(q:longint):longint;

var x:longint;

begin

x:=3;

unt:=1;

while q\>=x do

begin

while (q mod x\<\>0) and (q\>=x) do inc(x,2);

if q mod x =0 then exit (q div x);

end;

end;

begin

assign(f1,\'bai4.inp\');reset(f1);

assign(f2,\'bai4.out\');rewrite(f2);

readln(f1,n);a\[1\]:=1; max:=1;

for i:=2 to n do a\[i\]:=a\[i-1\]+2;

for i:=1 to n do

begin

t:=unt(a\[i\]);

if t\>max then

max:=t;

end;

writeln(f2,max);

close(f1);

close(f2);

end.

\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--

Sub 3:

program bai4;

var

a,b:array\[1..2000000\] of longint;

f1,f2:text;

n,i,j,max,t,p:longint;

function ucln(u,v:longint):longint;

var r:longint;

begin

r:= u mod v;

while r\>0 do

begin

u:=v;

v:=r;

r:=u mod v;

end;

ucln:=v;

end;

begin

assign(f1,\'bai4.inp\');reset(f1);

assign(f2,\'bai4.out\');rewrite(f2);

readln(f1,n);a\[1\]:=1; max:=1;

for i:=2 to n do a\[i\]:=a\[i-1\]+2;

for i:=n div 3 to n-1 do

for j:=i+1 to n do

begin

t:=ucln(a\[i\],a\[j\]);

if t\> max then max:=t;

end;

writeln(f2,max);

close(f1);

close(f2);

end.

\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--

Sub 4:

program bai4;

var

a,b:array\[1..2000000\] of longint;

f1,f2:text;

n,i,j,max,t,p:longint;

function ucln(u,v:longint):longint;

var r:longint;

begin

r:= u mod v;

while r\>0 do

begin

u:=v;

v:=r;

r:=u mod v;

end;

ucln:=v;

end;

begin

assign(f1,\'bai4.inp\');reset(f1);

assign(f2,\'bai4.out\');rewrite(f2);

readln(f1,n);a\[1\]:=1; max:=1;

for i:=2 to n do a\[i\]:=a\[i-1\]+2;

for i:=2 to n-1 do

for j:=i+1 to n do

begin

t:=ucln(a\[i\],a\[j\]);

if t\> max then max:=t;

end;

writeln(f2,max);

close(f1);

close(f2);

end.
