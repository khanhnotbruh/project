var f1,f2:text;
A,X,k,tich:longint;
begin
assign(f1,'timso.inp');
assign(f2,'timso.out');
reset(f1);
readln(f1,A,X);
close(f1);
tich:=1;k:=0;
while tich<= X do
      begin
           tich:=tich*A;
           inc(k);
      end;
rewrite(f2);
writeln(f2,k-1);
close(f2);
end.
