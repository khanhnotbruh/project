Phạm Văn Giang -- THPT Thủy Sơn

CAUHOI

Cho dãy số gồm N số nguyên dương, bạn phải đặt giữa N số nguyên này N
div 2 dấu cộng còn lại là dấu trừ sao cho biểu thức thu được có giá trị
lớn nhất (thứ tự các số không được thay đổi).

**Dữ liệu:** Vào từ file văn bản **BAI3.INP:**

\- Dòng 1 là số N (5≤N≤10^5^)

\- N dòng tiếp theo, mỗi dòng 1 số nguyên (a~i~≤10^50^)

**Kết quả:** Ghi vào file **BAI3.OUT** một số nguyên duy nhất là giá trị
thu được của biểu thức.

**Ví dụ:**

+-----------------------+----------------------------------------------+
| **BAI3.INP**          | **BAI3.OUT**                                 |
+=======================+==============================================+
| 5                     | 15                                           |
|                       |                                              |
| 4                     | Giải thích: Đặt giữa 5 số 2 dấu cộng, còn    |
|                       | lại là dấu trừ 4+5-2+9-1                     |
| 5                     |                                              |
|                       |                                              |
| 2                     |                                              |
|                       |                                              |
| 9                     |                                              |
|                       |                                              |
| 1                     |                                              |
+-----------------------+----------------------------------------------+

**Ràng buộc:** 40% số điểm với N≤1000 và a~i~≤10^6^; 60% số điểm với các
trường hợp còn lại.

DAPAN

Type mang=array\[1..100000\] of string;

Var a:mang;

N,i:longint;

T:ansistring;

f1, f2:text;

procedure **sort**(var c:mang;l,r:longint);

var x,tg:string;

t1,t2:longint;

begin

x:=c\[(l+r) div 2\];

t1:=l;

t2:=r;

repeat

while c\[t1\]\>x do inc(t1);

while c\[t2\]\<x do dec(t2);

if t1\<=t2 then

begin

tg:=c\[t1\];

c\[t1\]:=c\[t2\];

c\[t2\]:=tg;

inc(t1);

dec(t2);

end;

until t1\>t2;

if l\<t2 then sort(c,l,t2);

if t1\<r then sort(c,t1,r);

end;

procedure **cb**(var s1,s2:ansistring);

begin

while length(s1)\>length(s2) do s2:='0'+s2;

while length(s1)\<length(s2) do s1:='0'+s1;

end;

function **add1**(s1,s2:ansistring):ansistring;

var c,s:ansistring;

a,b:char;

nho,m,n,code,t,k:integer;

j:longint;

begin

nho:=0;

cb(s1,s2);c:=\'\';

for j:=length(s1) downto 1 do

begin

a:=s1\[j\];

b:=s2\[j\];

val(a,m,code);

val(b,n,code);

t:=m+n+nho;

nho:=t div 10;

k:=t mod 10;

str(k,s);

c:=s+c;

end;

if nho=1 then c:=\'1\'+c;

add1:=c;

end;

function **sub**(s1,s2:ansistring):ansistring;

var c,s:ansistring;

nho,m,n,code,t:integer;

j:longint;

a,b:char;

begin

nho:=0;

cb(s1,s2);c:=\'\';

for j:=length(s1) downto 1 do

begin

a:=s1\[j\];

b:=s2\[j\];

val(a,m,code);

val(b,n,code);

if m\<n then

begin

t:=m-n+10-nho;

nho:=1;

end

else

begin

t:=m-n-nho;

nho:=0;

end;

str(t,s);

c:=s+c;

end;

sub:=c;

end;

Begin

Assign(f1,'BAI4.INP');reset(f1);

Assign(f2,'BAI4.OUT');rewrite(f2);

Readln(f1,n);

For i:=1 to n do readln(f1,a\[i\]);

Sort(a,2,n);

T:='';

For i:=1 to n div 2 +1 do t:=add1(t,a\[i\]);

For i:=n div 2+2 to n do t:=sub(t,a\[i\]);

Write(f2,t);

Close(f1); Close(f2);

End.
