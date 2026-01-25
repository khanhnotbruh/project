program bai4;
var
a,b:array[1..2000000] of longint;
f1,f2:text;
n,i,j,max,t,p:longint;
function ucln(u,v:longint):longint;
var r:longint;
begin
r:= u mod v;
while r>0 do
begin
        u:=v;
        v:=r;
        r:=u mod v;
end;
ucln:=v;
end;
begin
assign(f1,'bai4.inp');reset(f1);
assign(f2,'bai4.out');rewrite(f2);
readln(f1,n);a[1]:=1; max:=1;
for i:=2 to n do a[i]:=a[i-1]+2;
for i:=n div 3 to n-1 do
for j:=i+1 to n  do
        begin
        t:=ucln(a[i],a[j]);
        if t> max then max:=t;
        end;
writeln(f2,max);
close(f1);
close(f2);
end.
