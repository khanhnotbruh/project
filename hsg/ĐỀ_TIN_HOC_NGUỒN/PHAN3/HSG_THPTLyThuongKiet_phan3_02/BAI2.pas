program BAI3;
var d: array[1..30000] of byte;
    M: longint;
procedure sangNT;
var i,j: longint;
begin
   for i:=1 to 30000 do d[i]:=0;
   d[1]:=1;
   i:=1;
   while i*i<=30000 do
      begin
         repeat inc(i) until (i*i>30000) or (d[i]=0);
         if i*i<=30000 then
            begin
               j:=2;
               while i*j<=30000 do
                  begin
                     d[i*j]:=1;
                     inc(j);
                  end;
            end;
      end;
end;
function sieunt(x: longint): boolean;
begin
   repeat
      if d[x]=1 then
         begin
            sieunt:=false;
            exit;
         end;
      x:=x div 10;
   until x=0;
   sieunt:=true;
end;
var a, b: longint;
BEGIN
   sangNT;
   readln(M);
   a:=m;
   while (a>0) and (not sieunt(a)) do dec(a);
   b:=m;
   while (b<30001) and (not sieunt(b)) do inc(b);
   if a>0 then writeln(a);
   if (b<>m) and (b<30001) then writeln(b);
   readln;
END
