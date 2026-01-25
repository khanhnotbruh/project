var f:text;
n,i:longint;
begin
assign(f,'bai1.inp');
rewrite(f);
randomize();
n:=1000000;
writeln(f,n);
for i:=1 to n do
write(f,random(1000000000)-random(1000000000),' ');
close(f);
end.