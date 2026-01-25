Program bai2_1;
Var 	i, j, N, t: Byte;
	A: array [1..200] of integer;
          f1, f2 : text ;
begin
assign ( f1,'BAI2_01.INP') ;
reset (f1) ;
assign ( f2,'BAI2_02.OUT') ;
rewrite (f2);
while not eof(f1) do
	begin
	readln (f1, N);
	for i:=1 to N do readln (f1, a[i]);
	end;
close (f1);
for i:= 2 to N do 
	begin
	t:=0;
	for j:= 1 to i-1 do  
	if a[j] mod a[i] = 0 then t:=t+1;
	if t<>0 then writeln (f2, i);
	end;
close (f2);
end.
