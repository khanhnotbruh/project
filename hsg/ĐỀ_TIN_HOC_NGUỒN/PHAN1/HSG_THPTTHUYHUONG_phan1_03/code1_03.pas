var t:text;
    i,d,p,q:word;
function dn(x:word):word;
 var sn:word;
   begin
   sn:=0;
   while (x<>0) do
    begin
     sn:= sn * 10 + x mod 10;
     x:= x div 10;
    end;
  dn:=sn;
 end;
function sont(n:word):boolean;
 var i:word;
     kt:boolean;
 begin
  if n <= 1 then kt:= false
  else
   begin
    kt:= true;
    for i := 2 to trunc(sqrt(n)) do
    if n mod i = 0 then
     begin
      kt:=false;
      break;
     end;
   end;
 sont:=kt;
end;
begin
 assign(t,'Bai1.inp');
 reset(t);
 read(t,p,q);
 close(t);
 assign(t,'Bai1.out');
 rewrite(t);
 d:=0;
 for i := p to q do
  if sont(dn(i)) then inc(d) ;
 write(t,d);
 close(t);
end.
