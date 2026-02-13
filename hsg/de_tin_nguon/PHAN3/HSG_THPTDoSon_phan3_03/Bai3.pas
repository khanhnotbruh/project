Program d2b1;
const fi='bai3.inp';
      fo='bai3.out';
Var a:array[1..100000000] of int64;
    N,d,UT,BT,BT1:int64;
    i:Longint;
    f1,f2:text;
procedure mofile;
begin
  assign(f1,fi);
  reset(f1);
  readln(f1,N);
  for i:=1 to N do read(f1,a[i]);
  assign(f2,fo);
  Rewrite(f2);
end;
Procedure dongfile;
begin
   close(f1);
   close(f2);
end;
Function UCLN(x,y:Longint):Longint;
Begin
   if x mod y = 0 then
   Begin
     UCLN:=y;
     exit;
   end
   else
     While x<>y do
     if x>y then x:=x-y else y:=y-x;
   UCLN:=x;
End;
Function UC(x,y:Longint):Longint;
var r:longint;
Begin
   if x mod y = 0 then
   Begin
     UC:=y;
     exit;
   end
   else
     While y<>0 do
     Begin
        r:=x mod y;
        x:=y;
        y:=r;
     end;
   UC:=x;
End;
Procedure xuli1;
Begin
   UT:=UC(a[1],a[2]);
   if n>1 then BT:=(a[1]*a[2]) div UT
   else BT:=a[1];
   for i:=3 to n do
   Begin
     UT:=UC(UT,a[i]);
     BT:=(BT*a[i]) div UC(BT,a[i]);
   end;
   for i:=1 to n-1 do Write(f2,BT div a[i],' ');
   write(f2,bt div a[n]);
End;
BEGIN
  mofile;
  Xuli1;
  dongfile;
END.


