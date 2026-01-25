var n,i,x,dem: longint;
b: array [1..1000] of longint;
f: text;
begin
assign (f, 'MARATHON.INP');
reset(f);
readln(f,n);
for i:=1 to n do
begin
read(f,x);
if b[x]=0 then dem:=dem+1;
b[x]:=1;
end;
close (f);
assign(f, 'MARATHON.OUT');
rewrite( f) ;
write(f,dem);
close (f)
end.