TYPE mang = array[1..100] of byte;
VAR t: text;
    a: mang;
    i,n,d: byte;
Procedure QS(Var a: mang;d,c: byte);
 Procedure Sort(l,r: byte);
  Var i,j,x,y: byte;
  Begin
   i:=l; j:=r; x:=a[(l+r) div 2];
   Repeat
    While (a[i]<x) do inc(i);
    While (a[j]>x) do dec(j);
    If i<=j then
     begin
      y:=a[i];
      a[i]:=a[j];
      a[j]:=y;
      inc(i);
      dec(j);
     end;
   Until (i>j);
   If i<r then Sort(i,r);
   If l<j then Sort(l,j);
  End;
 Begin
  Sort(d,c);
 End;
BEGIN
     Assign(t,'Bai3.INP');
     Reset(t);
     Read(t,n);
     For i:=1 to n do read(t,a[i]);
     close(t);
     Assign(t,'Bai3.OUT');
     Rewrite(t);
     QS(a,1,n);
     i:=1; d:=0;
     While (i<=n) do
      begin
       inc(d);
       inc(i,a[i]);
      end;
     Write(t,d);
     close(t);
END.
