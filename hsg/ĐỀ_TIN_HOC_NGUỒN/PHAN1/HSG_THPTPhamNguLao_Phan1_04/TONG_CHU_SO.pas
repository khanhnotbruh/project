Program Tong_cac_chu_so;
Uses Crt;
Var n,i,j,t,b: longint;
    f,g:Text;
BEGIN
 assign(f,'TongCS.inp');
 assign(g,'TongCS.out');
 reset(f); rewrite(g);
 Readln(f,n);
  t:=0;
  while n <>0 do
    begin
     b:=n mod 10;
     t:= t+b;
     n:=n div 10;
    end;
   Write(' tong cac chu so la:', t);
   Write(g,t);
   Close(f); Close(g);
  Readln;

END.
