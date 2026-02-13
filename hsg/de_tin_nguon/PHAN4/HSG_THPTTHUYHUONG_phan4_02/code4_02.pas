var t:text;
    n,i,d,k:longword;
    a,b:array[1..1000000] of longword;
function Tnto(n:longword):boolean;
  var i,d:longword;
      kt:boolean;
  begin
    d:=2;
    for i:=2 to n div 2 do
     if n mod i = 0 then inc(d);
     if d = 3 then kt:=true
     else kt:=false;
   Tnto:=kt;
  end;
BEGIN
  assign(T,'Bai4.inp');
  reset(T);
  read(T,n,k);
  for i:=1 to n do read(T,a[i]);
  close(T);
  assign(T,'Bai4.out');
  rewrite(T);
  d:=0;
  for i:=1 to n do
   if a[i]<=k then
    if Tnto(a[i])then
     begin
      inc(d);
      b[d]:=(a[i]);
     end;
  writeln(T,d);
  for i:=1 to d do writeln(t,b[i]);
  close(T);
END.
