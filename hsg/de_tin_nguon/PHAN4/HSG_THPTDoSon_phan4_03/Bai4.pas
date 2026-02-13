Program d2b1;
const fi='bai4.inp';
      fo='bai4.out';
Var a,d,b:array[1..100000000] of longint;
    N,Max,MaxD:longint;
    i,j:Longint;
    f1,f2:text;
procedure mofile;
begin
  assign(f1,fi);
  reset(f1);
  readln(f1,N);
  MaxD:=0;
  for i:=1 to N do
  Begin
    read(f1,a[i]);
    if maxD<a[i] then maxD:=a[i];
  End;
  assign(f2,fo);
  Rewrite(f2);
end;
Procedure dongfile;
begin
   close(f1);
   close(f2);
end;
Procedure xuli1;
Begin
   fillchar(d,sizeof(d),0);
   for i:=1 to n do inc(d[a[i]],a[i]);
   max:=d[1];
   for I:=2 to MaxD do if d[i]>max then max:=d[i];
   for i:=1 to MaxD-1 do Write(f2,Max-d[i],' ');
   Write(f2,Max-d[MaxD])
End;
BEGIN
  mofile;
  Xuli1;
  dongfile;
END.
