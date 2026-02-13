PROGRAM BAI1;
USES     CRT;
VAR     tg,i,j,n:integer;
        a:array[1..20] of integer;
BEGIN

      Clrscr;
      write('Nhap n='); Readln(n);
      For i:=1 to n do Read(a[i]);
      Readln;

      i:=1; j:=n;
      Repeat
        While a[i]>0 do inc(i);
        While a[j]<=0 do dec(j);
        If i<j then Begin
                        tg:=a[i];
                        a[i]:=a[j];
                        a[j]:=tg;
                    End;
      Until j<=i;
      j:=n;
      Repeat
        While a[i]>=0 do inc(i);
        While a[j]<0 do dec(j);
        If i<j then  begin
                         tg:=a[i];
                         a[i]:=a[j];
                         a[j]:=tg;
                     End;
      Until j<=i;

      for i:=1 to n do Write(a[i]:4);
      readln
END.