Program Tongchuso;
uses crt;
var n,m:longint;tong:byte;
      f1,f2:text;
BEGIN
assign(f1,'DULIEU1.INP');
reset(f1);
read(f1,n);
assign(f2,'DULIEU1.OUT');
rewrite(f2);
 tong:=0;m:=n;
 while m>0 do
  begin
   tong:=tong+m mod 10;
   m:=m div 10;
  end;
  write(f2,tong);
 close(f1); close(f2); readln
END.