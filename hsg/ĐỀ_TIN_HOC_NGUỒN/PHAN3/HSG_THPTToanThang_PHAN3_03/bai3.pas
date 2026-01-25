var f1,f2:text;
n,a,b,c,dem,i:longint;
begin
assign(f1,'bai1.inp');reset(f1);
assign(f2,'bai1.out');rewrite(f2);
readln(f1,n);
read(f1,a,b);
dem:=0;
for i:=3 to n do
begin
read(f1,c);
if (a> b) and (b<c) then inc(dem);
a:=b;
b:=c;
end;
Write(f2,dem);
close(f1);close(f2);
end.
