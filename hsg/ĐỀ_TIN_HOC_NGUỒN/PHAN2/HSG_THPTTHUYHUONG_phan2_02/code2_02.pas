var t:text;
    i:word;diem:real;
    s:ansistring;
BEGIN
  assign(T,'Bai2.inp');
  reset(T);
  read(T,s);
  close(T);
  assign(T,'Bai2.out');
  rewrite(T);
  diem:=0;
  for i:=1 to length(s) do
      if upcase(s[i])='D' then diem:=diem + 0.5;
  write(T,diem:5:1);
  close(T);
END.
