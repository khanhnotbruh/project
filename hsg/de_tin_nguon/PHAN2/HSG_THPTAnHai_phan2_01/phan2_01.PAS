CONST tepinp='MANV.INP';
      tepout='MANV.OUT';
VAR fi,fo:text;
    n,i:integer;
    a:array[1..30000]of integer;
Procedure Tim;
  Var kq,i,max,min:integer;
      kt:boolean;
 Begin
   max:=a[1];min:=a[1];
   For i:=2 to n do
    Begin
     If a[i]>max then max:=a[i];
     If a[i]<min then min:=a[i];
    End;
   If min>=2 then kq:=1
   Else If max=n then kq:=n+1
   Else
     Begin
      kq:=1;kt:=false;
      While kt=false do
       Begin
        Inc(kq);i:=1;a[n+1]:=kq;
        While a[i]<>kq do inc(i);
        If i>n then kt:=true;
       End;
     End;
   Writeln(fo,kq);
 End;
BEGIN
  Assign(fi,tepinp);reset(fi);
  Assign(fo,tepout);rewrite(fo);
  Readln(fi,n);
  For i:=1 to n do Readln(fi,a[i]);
  Tim;
  Close(fi);Close(fo);
End.
