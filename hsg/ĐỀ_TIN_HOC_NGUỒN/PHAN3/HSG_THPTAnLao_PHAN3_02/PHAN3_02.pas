
const fi='sign.inp';
fo='sign.out';
var f:text;
a,c:array[-2..100]of longint;
b:array[-2..100000000]of longint;

tong,t,l,l1,k,n,i,j:longint;

begin
assign(f,fi);
reset(f);
tong:=0;
readln(f,n,k);

for i:= 1 to n do
begin
read(f,a[i]);

tong:=tong+a[i];
end;
close(f);
assign(f,fo);
rewrite(f);

b[0]:=-1;
t:=(tong-k) div 2;
l:=0; l1:=0;

for i:= 2 to n do
if l1=t then
break
else
begin

l:=l1;
for j:= 0 to l do

if (b[j]<>i) and(b[j]<>0)and(j+a[i]<=t)and(b[j+a[i]]=0) then begin

b[j+a[i]]:=i;
if (j+a[i]>l1) then
l1:=j+a[i];
end;
end;

while (t>0) and (((tong-2*t) mod k<>0)or(b[t]=0)) do begin

t:=t-1;

end;
if (b[t]=0) or(t<1) then
writeln(f,0)
else
begin
write(f,1);
while b[t]>0 do

begin

c[b[t]]:=1;
t:=t-a[b[t]];
end;
for i:= 2 to n do
if c[i]=0 then

write(f,'+')
else
write(f,'-');

end;
close(f);
end.
