Phạm Hồng Vân -- THPT An Hải

CAUHOI

**Sắp xếp mảng**

Viết chương trình nhập vào từ bàn phím mảng một chiều A gồm M phần tử,
mảng một chiều B gồm N phần tử, sắp xếp 2 dãy A và B tăng dần sau đó
trộn 2 dãy thành dãy C sao cho dãy C cũng là dãy đã được sắp xếp tăng
dần. In mảng A, B, C ra màn hình.

DAPAN

uses crt;

var a,b,c:array\[1..100\] of integer;

i,n,j,k,m,d,e,f:integer;

procedure dc(var a,b:integer);

var t:integer;

begin

t:=a;

a:=b;

b:=t;

end;

{-}

begin

clrscr;

write(\'nhap so phan tu cua mang 1 va 2:\');readln(n,m);

for i:=1 to n do

begin

write(\'a\[\',i,\'\]:\');readln(a\[i\]);

end;

for i:=1 to m do

begin

write(\'b\[\',i,\'\]:\');readln(b\[i\]);

end;

{mang a va mang b tu xuat ra nhe ban}

c:=a;

d:=m+n;

for i:=n+1 to d do

begin

e:=e+1;

c\[i\]:=b\[e\];

end;

for i:=1 to d-1 do

for j:=i+1 to d do

if c\[i\]\>c\[j\] then dc(c\[i\],c\[j\]);

for i:=1 to d do write(c\[i\]:3);

readln;

end.
