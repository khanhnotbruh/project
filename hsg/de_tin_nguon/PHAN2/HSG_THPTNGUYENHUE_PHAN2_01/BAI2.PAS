program bai2;
Uses crt;
Var
   a,b:array[1..1000] of integer;
   i,j,n,m:integer;
   fin,fout:text;
   kt:boolean;
BEGIN
     clrscr;
     {Doc du lieu tu tep BAI2.INF len mang a}
     assign(fin,'BAI2.INP');
     reset(fin);
     readln(fin,n);
     i:=1;
     while not eof(fin) do
     Begin
          read(fin,a[i]);
          i:=i+1;
     End;
     close(fin);
     { Xoa cac phan tu giong nhau tren mang a}
     b[1]:=a[1];
     m:=1;i:=2;
     while(i<=n) do
     Begin
          kt:=true;
          for j:=1 to m do
              if a[i]=b[j] then
              Begin
               kt:=false;
               break;
              End;
          if kt=true then
          Begin
           m:=m+1; b[m]:=a[i];
          End;
         i:=i+1;
     End;
     {Ghi ket qua xuong tep BAI2.OUT}
     assign(fout,'BAI2.OUT');
     rewrite(fout);
     writeln(fout,m);
     for j:=1 to m do write(fout,b[j],' ');
     close(fout);
     readln;
END.