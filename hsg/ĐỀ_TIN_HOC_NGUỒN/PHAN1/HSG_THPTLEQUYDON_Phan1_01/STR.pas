var f1,f2:text;a:ansistring;l,i:longint;
begin
  assign(f1,'STR.INP');reset(f1);
  assign(f2,'STR.OUT');rewrite(f2);
  readln(f1,a);
  for i:=1 to length(a) do
    if a[i] in ['a'..'z'] then inc(l);
  writeln(f2,length(a));
  writeln(f2,l);
  close(f1);
  close(f2);
end.

