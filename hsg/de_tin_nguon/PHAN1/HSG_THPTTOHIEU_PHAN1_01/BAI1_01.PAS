Program bai1_1;
Var 	f1,f2: text;
   	N, G, VAT: real{double};
Begin
assign(f1,'BAI1_01.inp');
reset(f1); 
assign(f2, 'BAI1_01.out');
rewrite(f2); 
while not eof(f1) do
Begin
readln(f1,N);
   if N<=5 then G:=N*6500 else
   if N<=15 then G:=5*6500+(N-5)*7800 else
   if N<=25 then G:=5*6500+10*7800+(N-15)*9200
   else G:=5*6500+10*7800+10*9200+(N-25)*10300;
   VAT:=G*12/100;
End;
writeln(f2,G:0:2);
writeln(f2,VAT:0:2);
writeln(f2,G+VAT:0:2);
close(f1); 
close(f2);
End.
