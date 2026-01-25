program dao__nguoc_tung_tu;
type mang=array[1..1000] of char;
function kt(c:char):boolean;
begin
 kt:=false;
 if (c in ['a'..'z']) or (c in ['A'..'Z']) then kt:=true;
end;
procedure daongc(var a:mang;x,y:integer);
var tam:char;
    i,m:integer;
begin
 m:=x+((y-x) div 2);
 for i:=x to m do
      begin
         tam:=a[i];
         a[i]:=a[y-i+x];
         a[y-i+x]:=tam;
         end;
end;
var fi,fo:text;
    x,y,i,n:integer;
    a:mang;
begin
 assign(fi,'B1.inp');reset(fi);
 assign(fo,'B1.out');rewrite(fo);
 n:=1;
 while not eof(fi) do begin
      n:=n+1;
      read(fi,a[n]);
      end;
 a[1]:=#32;
 x:=0;
 y:=0;
 for i:=2 to n do
   begin
      if (kt(a[i])=true) and (kt(a[i-1])=false) then x:=i;
      if (kt(a[i])=true) and (kt(a[i+1])=false) then y:=i;
      if (x>0) and (y>0) then begin
                                 daongc(a,x,y);
                                 x:=0;
                                 y:=0;
                                 end;
      end;
 for i:=2 to n do write(fo,a[i]);
 close(fi);
 close(fo);
end.


