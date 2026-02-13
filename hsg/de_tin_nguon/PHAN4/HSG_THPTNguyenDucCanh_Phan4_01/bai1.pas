var
   N, G, VAT: double;
Fi,fo:text;
BEGIN
Assign(fi,'bai1.inp');reset(fi);
Assign(fo,'bai1.out');rewrite(fo);
   read(fi,N);
   if N<=5 then G:=N*6500 else
   if N<=15 then G:=5*6500+(N-5)*7800 else
   if N<=25 then G:=5*6500+10*7800+(N-15)*9200
   else G:=5*6500+10*7800+10*9200+(N-25)*10300;
   VAT:=G*12/100;
   writeln(fo,G:0:2);
   writeln(fo,VAT:0:2);
   writeln(fo,G+VAT:0:2);
close(fi);
close(fo);
END.
