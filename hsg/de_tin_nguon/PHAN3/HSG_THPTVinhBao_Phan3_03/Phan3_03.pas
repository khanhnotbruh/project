program bai3;
function nt(n:longint):boolean;
var i:longint;
begin
 nt:=false;
 if n<2 then exit;
 for i:=2 to trunc(sqrt(n)) do
  if n mod i =0 then exit;
 nt:=true;
end;
var fi,fo:text;
    s,chu:array[1..1000] of char;
    so:array[1..1000] of string;
    n,m,a,b,i,j,d:integer;
    c:longint;
    ch:char;
begin
 assign(fi,'bai3.inp');
 assign(fo,'bai3.out');
 reset(fi);
 rewrite(fo);
 n:=0;
 while not eof(fi) do begin
  n:=n+1;
  read(fi,s[n]);
  end;
 m:=0;
 a:=0;
 b:=0;
 for i:=1 to n do begin
  if s[i] in ['0'..'9'] then begin
   if m=0 then a:=a+1;
   so[a]:=so[a]+s[i];
   m:=1;
   end else m:=0;
  if s[i] in ['a'..'z','A'..'Z'] then begin
     b:=b+1;
     chu[b]:=s[i];
     end;
                  end;
 for i:=1 to b-1 do
  for j:=i+1 to b do
   if upcase(chu[i])>upcase(chu[j]) then begin
      ch:=chu[i];
      chu[i]:=chu[j];
      chu[j]:=ch;
      end;
 for i:=1 to b do write(fo,chu[i]);
 writeln(fo,'');
 for i:=1 to a do begin
  val(so[i],c,d);
  if nt(c) then write(fo,c,' ');
  end;
 close(fi);
 close(fo);
end.

