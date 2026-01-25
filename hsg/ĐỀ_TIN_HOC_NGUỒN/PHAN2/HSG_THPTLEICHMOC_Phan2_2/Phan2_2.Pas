type mang=array[1..100] of longint;
var  n,i,j,max:integer;
     a:mang;
     t:text;
function tong(a:mang;dau,cuoi:byte):longint;
 var i:integer;
        S:longint;
 begin
  S:=0;
  for i:=dau to cuoi do
   S:=S+a[i];
  tong:=S;
 end;
Begin
 assign(t,'d:\HSG\2022\Bai1.INP');
 reset(t);
 readln(t,n);
 for i:=1 to n do
  read(t,a[i]);
 close(t);
 assign(t,'d:\HSG\2022\Bai1.OUT');
 rewrite(t);
 max:=a[1];
 for i:=1 to n-1 do
  for j:=i+1 to n do
   if max<tong(a,i,j) then max:=tong(a,i,j);
 write(t,max);
 close(t);
End.