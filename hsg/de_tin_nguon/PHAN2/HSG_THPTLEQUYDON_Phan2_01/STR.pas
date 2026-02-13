var f1,f2:text;a:ansistring;j,n,i,l:longint;
begin
  assign(f1,'CHARACTERS.INP');reset(f1);
  assign(f2,'CHARACTERS.OUT');rewrite(f2);
  readln(f1,n);
  for j:=1 to n do begin
    readln(f1,a);
    l:=0;
    for i:=2 to length(a) do if a[i]=a[i-1] then inc(l);
    writeln(f2,l);
  end;
  close(f1);
  close(f2);
end.
