const maxn=2000;
type td=record     x,y:integer;     end;
var a: array[1..maxn] of td;
    free:array[1..maxn] of boolean;
    n,i:integer;    c:longint;    f:text;
{=======================================}
Procedure DocDL;
begin
     assign(f,'DL.INP'); reset(f);     readln(f,n);
     for i:=1 to n do readln(f,a[i].x,a[i].y);
     close(f);
end;
{======================================}
Procedure Dem;
var j,k,x1,y1,tmp:integer;
begin
     c:=0;
     for i:=1 to n-1 do
     begin
          fillchar(free,sizeof(free),true);
          for j:=i+1 to n-1 do
          if free[j] then
          begin
               tmp:=1;
               x1:=a[j].x-a[i].x;  y1:=a[j].y-a[i].y;
               for k:=j+1 to n do
                   if free[k] then
                   if x1*(a[k].y-a[i].y)=y1*(a[k].x-a[i].x) then
                   begin
                        inc(tmp);
                        free[k]:=false;
                   end;
               inc(c,tmp*(tmp-1) div 2);
          end;
     end;
end;
{========================================}
procedure Xuat;
begin
     assign(f,'KQ.OUT'); rewrite(f);  writeln(f,c);   close(f);
end;
{====================================}
Begin
     DocDL;     Dem;     Xuat;
End.
