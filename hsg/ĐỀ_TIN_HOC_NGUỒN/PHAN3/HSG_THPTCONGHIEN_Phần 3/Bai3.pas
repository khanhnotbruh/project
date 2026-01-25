var a,b,c:array[1..1000] of longint;
i,j,k,n,m:longint;
fi,fo:text;
procedure docdl;
begin
 assign(fi,'bai3.inp'); reset(fi);
 assign(fo,'bai3.out');rewrite(fo);
end;
begin
docdl;
readln(fi,n);
for i:=1 to n do  read(fi,a[i]);
n:=n+1;
a[n]:=1000000001;
b[1]:=1;
for i:=2 to n do
 begin
 k:=0;
 for j:=1 to i-1 do
   if (a[j]<a[i]) and (k<b[j]) then k:=b[j];
 b[i]:=k+1;
 end;

m:=b[n]; j:=m;
c[m]:=a[n];
i:=n;
while i>=1 do
 if b[n]-1=b[i] then begin dec(j);c[j]:=a[i];n:=i; dec(i); end
 else dec(i);
for i:=1 to m-1 do write(fo,c[i]:5);
close(fo);
close(fi);
end.

