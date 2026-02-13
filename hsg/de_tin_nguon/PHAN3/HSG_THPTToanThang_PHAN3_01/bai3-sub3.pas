program bai3;
var a:array[1..1000000] of longint;
f1,f2:text;
k,m,i,j,n:longint;
t:int64;
procedure sort;
var tg:longint;
begin
     for i:=1 to n-1 do
      for j:=i to n do
      if a[i]<a[j] then
        begin
                tg:=a[i];
                a[i]:=a[j];
                a[j]:=tg;
        end;
      end;
begin
assign(f1,'bai3.inp');reset(f1);
assign(f2,'bai3.out');rewrite(f2);
readln(f1,n,m,k);
for i:=1 to n  do read(f1,a[i]);
sort;
t:=0;
for i:= 1 to n do if i mod m <>0 then  t:=t+a[i]*k;
writeln(f2,t);
close(f1);close(f2);
end.
