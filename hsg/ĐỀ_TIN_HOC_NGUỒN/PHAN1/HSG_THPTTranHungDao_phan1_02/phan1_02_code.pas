program DayChiaHet;
uses crt;
const inp='bai1.inp';
      out='bai1.out';
var a:array[0..1] of set of byte;
    g:text;
    k,n,t,i,j,l:longint;
function f(x:longint):byte;
begin
   x:=x mod k;
   if x<0 then f:=x+k else f:=x;
end;
begin
 clrscr;
 assign(g,inp);reset(g);
 readln(g,n,k);
 t:=0;
 read(g,j);
 a[0]:=[f(j)];
 for i:=2 to n do
 begin
    t:=1-t;
    a[t]:=[];
    read(g,j);
    for l:=0 to k-1 do
     if l in a[1-t] then
     begin
        a[t]:=a[t]+[f(l+j)];
        a[t]:=a[t]+[f(l-j)];
     end;
 end;
 close(g);
 assign(g,out);rewrite(g);
 if 0 in a[t] then write(g,1) else write(g,0);
 close(g);
 write('Complete - Open file ',out,' to view the result');
 readln;
End.
