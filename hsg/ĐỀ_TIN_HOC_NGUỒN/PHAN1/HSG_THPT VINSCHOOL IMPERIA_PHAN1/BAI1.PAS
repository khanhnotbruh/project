program bai1;
var i,j,n:integer;
y,x:longint;
S:real;
Begin
Writeln('Nhap n='); Readln(n);
S:=1/2;
For i:=2 to n do
Begin
   x:=1;  y:=1;
   for j:=1 to i do
   Begin
   x:=x*i;
   y:=y*(i+1)
   end;
s:=s+x/y;
end;
writeln('s= ',s);
Readln;
end.
