program bai4;
var
a,b:array[1..2000000] of longint;
f1,f2:text;
n,i,j,max,t,p:longint;
procedure sang;
var l:longint;
begin
l:= 2*n ;b[1]:=1;
for i:=2 to l do b[i]:=0;
 for i:= 2 to trunc(sqrt(l)) do
 if b[i]=0 then
        begin
                j:= i*i;
                while j<=l  do
                        begin
                                b[j]:=1;
                                j:=j+i;
                        end;
        end;
end;
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
sang;
for i:=2 to n do a[i]:=a[i-1]+2;
for i:=n div 3 to n do if b[a[i]]<>0 then
begin
t:=unt(a[i]);
if t>max then max:=t;
end;
writeln(f2,max);
close(f1);
close(f2);
end.
