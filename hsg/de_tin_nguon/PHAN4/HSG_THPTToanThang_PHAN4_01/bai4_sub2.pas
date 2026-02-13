program bai4;
var
a:array[1..2000000] of longint;
f1,f2:text;
n,i,j,max,t:longint;
function unt(q:longint):longint;
var x:longint;
begin
x:=3;
unt:=1;
while q>=x do
begin
        while (q mod x<>0) and (q>=x) do inc(x,2);
        if q mod x =0 then exit (q div x);
end;
end;
begin
assign(f1,'bai4.inp');reset(f1);
assign(f2,'bai4.out');rewrite(f2);
readln(f1,n);a[1]:=1; max:=1;
for i:=2 to n do a[i]:=a[i-1]+2;
for i:=1 to n do
begin
t:=unt(a[i]);
if t>max then
max:=t;
end;
writeln(f2,max);
close(f1);
close(f2);
end.
