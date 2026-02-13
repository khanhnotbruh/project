Program SoNguyenTo;

Var n,i:Longint;
       f1,f2: text;

Begin
assign(f1,'DULIEU2.INP');
reset(f1);
assign(f2,'DULIEU2.OUT');
rewrite(f2);
read(f1,n);

While n>=2 do

Begin

i:=2;

While (i<=sqrt(n)) and (n mod i<>0) do i:=i+1;

If i>sqrt(n) then writeln(f2,n);

n:=n div 10;

End;
close(f1);
close(f2);

End.