program so_sieu_chan;
Uses crt;
var f,g:text;
    ng,du,dem,i,n:longint; dt:integer;
    kt,ok:boolean;
    a:array[1..300] of longint;
BEGIN
 Clrscr;
 assign(f,'bai3_tt.inp');
 assign(g,'bai3_tt.out');
 reset(f); rewrite(g);
 readln(f,n);
 For i:=1 to n do
  readln(f,a[i]);
 dem:=0;
 for i:=1 to n do
  if a[i]>21 then
   begin
    ok:=true;kt:=false;
    dt:=-1; ng:=a[i];
    while (kt=false) do
     begin
      du:=ng mod 10;
      ng:=ng div 10;
      if du mod 2<> 0 then
       ok:= false;
      if dt=-1 then dt:=du
      else
       begin
        if du<>dt then ok:=false;
        dt:=du;
       end;
     if ng=0 then kt:=true;
     end;
    if ok=true then dem:= dem+1;
 end;
 Writeln('co cac so sieu chan la:',dem);
 Writeln(g,dem);
 close(f); close(g);
 Readln;
 END.





