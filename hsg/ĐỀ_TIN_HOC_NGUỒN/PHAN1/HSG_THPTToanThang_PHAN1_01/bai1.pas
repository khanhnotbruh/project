program bai1;
const fi='bai1.inp';
fo='bai1.out';
var f1,f2:text;
x,y,a,b,c: longint;
begin
assign(f1,fi);reset(f1);
assign(f2,fo);rewrite(f2);
readln(f1,a,b,c);
y:=1;x:=0;
while (c > b*y) do
begin
        if (c-b*y) mod a= 0 then
        x:= (c-b*y) div a;
        if x<>0 then writeln(f2,x,' ',y);
        inc(y);
end;
if x=0 then write(f2,0);
close(f1);
close(f2);
end.
