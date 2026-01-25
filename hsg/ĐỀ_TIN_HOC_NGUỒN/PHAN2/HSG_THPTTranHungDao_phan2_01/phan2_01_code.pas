var a:array[1..100] of byte;
b:array[1..100] of string;
i,j,n:longint;
tam:string;
f1,f2:text;
begin
assign(f1,'ketnoi.inp');
reset(f1);
assign(f2,'ketnoi.out');
rewrite(f2);
readln(f1,n);
for i:=1 to n do
read(f1,a[i]);
for i:=1 to n do
str(a[i],b[i]);
tam:='';
for i:=1 to n do
for j:=i+1 to n do
if b[i]<b[j] then
begin
tam:=b[i];
b[i]:=b[j];
b[j]:=tam;
end;
for i:=1 to n do
write(f2,b[i]);
close(f1);
close(f2);
end.
