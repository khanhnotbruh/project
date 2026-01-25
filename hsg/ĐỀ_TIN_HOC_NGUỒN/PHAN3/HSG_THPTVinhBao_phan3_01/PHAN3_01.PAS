var a: array[1..1000] of integer;
n: integer;
f1, f2:text;
procedure doctep;
begin
assign(f1,'BAI3.inp');
reset(f1);
n:=0;
while not eof(f1) do begin
                          n:=n+1;
                         read(f1, a[n]);
                         end;
assign(f2,'BAI3.out');
rewrite(f2);
end;
procedure xuly;
var dem, max, i,j: integer;
begin
dem:=1;
max:=0;
for i:=2 to n+1 do
if (a[i]= a[i-1]) and(i<=n) then dem:=dem+1 else
begin
if dem>max then max:=dem;
dem:=1;
end;
dem:=1;
for i:= 2 to n+1 do
if (a[i]= a[i-1]) and(i<=n) then dem:=dem+1 else
begin
if dem=max then begin
for j:=i-max  to i-1 do write(f2, a[j]:2);
writeln(f2);
end;
dem:=1;
end;
close(f1); close(f2);
end;
begin
doctep;
xuly;
end.	
