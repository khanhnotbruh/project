Var
       a: array[1..200] of integer;
       i,j,n,tam,dem:integer;
       f:text;
Begin
       Assign(f,'BAI3.inp');
       Reset(f);
       Readln(f,n);
      for i:=1 to n do
       read(f,a[i]);
      Close(f);
      Assign(f,'BAI3.Out');
      Rewrite(f);
For i:=1 to n- 1do
      For J:=i+1 to n do
      if abs(a[i])<abs(a[j]) then
     begin
     tam:=a[i];
     a[i]:=a[j];
     a[j]:=tam;
     end;
    dem:=0;
    for i:=1 to n do
    if a[i] mod 2 = 0 then dem:=dem+1;
for i:=1 to n do
    if a[i] mod 2=0 then Writeln(f,a[i]:0);
    close(f);
    Write('Chuong trinh xu ly xong');
    Readln;
End.
