var t:text;
    i,a,b:word;
function sohh (n:word):boolean;
var tu,i:word;
 begin
  sohh := false;
  tu:=0;
  for i:=1 to n div 2 do
   if n mod i = 0 then tu:= tu + i;
   if tu = n then sohh:= true;
 end;
begin
 assign(t,'Bai1.inp');
 reset(t);
 read(t,a,b);
 close(t);
 assign(t,'Bai1.out');
 rewrite(t);
 for i := a to b do
  if sohh(i) then writeln(t,i);
 close(t);
end.
