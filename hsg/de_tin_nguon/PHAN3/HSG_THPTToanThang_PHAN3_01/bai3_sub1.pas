var f1,f2:text;
n,i,j,sh,sl:longint;
d,l:array[1..1000000] of longint;
BEGIN
assign(f1,'bai3.inp');reset(f1);
assign(f2,'bai3.out');rewrite(f2);
readln(f1,n);
d[1]:=100;
for i:=2 to 50 do d[i]:=d[i-1]+50;
for i:=1 to n do read(f1, l[i]);
for i:=50 downto 1 do
begin
sl:=0;
for j:=1 to n do if d[i]=l[j] then inc(sl);
sh:=sl div 10;
if sl mod 10 >0 then inc(sh);
if sh>0 then writeln(f2, d[i], ' ',sh);
end;
close(f1);close(f2);
END.
