var f1,f2:text;a,b,c,l:int64;
begin
  assign(f1,'SALE.INP');reset(f1);
  assign(f2,'SALE.OUT');rewrite(f2);
  readln(f1,a,b,c);
  l:=(a div (b+1))*c*B + (a mod (b+1))*c;
  writeln(f2,l);
  close(f1);
  close(f2);
end.