var f1,f2:text;
n,i,j,l,h:longint;
a,sh:array[1..2550] of longint;
BEGIN
assign(f1,'bai3.inp');reset(f1);
assign(f2,'bai3.out');rewrite(f2);
readln(f1,n);
for i:=1 to 2550 do a[i]:=0;
for i:= 1 to n do
begin
read(f1,l);
inc(a[l]);
end;
for i:=2550 downto 1 do
begin
sh[i]:=a[i] div 10;
if a[i] mod 10 > 0 then inc(sh[i]);
if sh[i] >0 then writeln(f2, i,' ',sh[i]);
end;
close(f1);close(f2);
END.
