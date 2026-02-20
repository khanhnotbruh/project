Phạm Thị Thùy Dương -- THPT Quang Trung

CÂU HỎI

Cho 2 số nguyên dương x và y (x \<= 10^50^, y\<=10^4^). Em hãy viết
chương trình thực hiện phép nhân 2 số trên?

-   Tệp dữ liệu vào tich.inp gồm

    -   Dòng đầu là số nguyên x

    -   Dòng thứ 2 là số nguyên y

-   Tệp dữ liệu ra tich.out gồm

    -   Số nguyên duy nhất là tích của 2 số x và y

Vd

+----------------------------------+-----------------------------------+
| Bai3.inp                         | Bai3.out                          |
+==================================+===================================+
| 1                                | 2                                 |
| 11111111111111111111111111111111 | 222222222222222222222222222222220 |
|                                  |                                   |
| 20                               |                                   |
+----------------------------------+-----------------------------------+

ĐÁP ÁN

const fi=\'bai3.inp\';

fo=\'bai3.out\';

var a:string;

n:longint;

procedure doc;

var i:longint;

ch:char;

f1:text;

begin

a:=\'\';

assign(f1,fi); reset(f1);

while not(eoln(f1)) do

begin

read(f1,ch);

a:=a+ch;

end;

readln(f1);

read(f1,n);

close(f1);

end;

procedure lds(var s1,s2:string);

var i:longint;

begin

while length(s1)\<\>length(s2) do

s2:=\'0\'+s2;

end;

function sum(s1,s2:string):string;

var st,x:string;

i,code,u,v,du,t:longint;

begin

if length(s2)\<length(s1) then lds(s1,s2) else lds(s2,s1);

st:=\'\';

i:=length(s1)+1;

du:=0;

repeat

dec(i);

val(s1\[i\],u,code);

val(s2\[i\],v,code);

t:=u+v+du;

du:=t div 10;

t:=t mod 10;

str(t,x);

st:=x+st;

until i=1;

if du\<\>0 then

begin

str(du,x);

st:=x+st;

end;

exit(st);

end;

procedure xuli;

var st:string;

i:longint;

f2:text;

begin

assign(f2,fo); rewrite(f2);

st:=\'0\';

for i:=1 to n do

st:=sum(st,a);

write(f2,st);

close(f2);

end;

BEGIN

doc;

xuli;

END.
