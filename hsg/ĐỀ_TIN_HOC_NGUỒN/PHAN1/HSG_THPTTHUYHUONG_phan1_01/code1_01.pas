var t:text;
    i,n,d:word;
function tongcs(x:word):word;
 var tong:word;
   begin
   tong:=0;
   while (x<>0) do
    begin
     tong:= tong + x mod 10;
     x:= x div 10;
    end;
  tongcs:=tong;
 end;
function sont(n:longint):boolean;
 var i:longint;
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
 read(t,n);
 close(t);
 assign(t,'Bai1.out');
 rewrite(t);
 d:=0;
 for i := 10 to 100 do
  if (sont(i)) and (sont(tongcs(i))) then inc(d);
 write(t,d);
 close(t);
end.
