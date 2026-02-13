Var f1,f2:text;
n,i,j,a,maxnt,somax,dem,so:longint;
arr,arr1:array[1..100000] of longint;
function nt(x:longint):boolean;
var t:longint;
begin
if x<=1 then nt:=false
else
        begin
        if x<4 then nt:=true
                else
                for t:=2 to trunc(sqrt(x)) do
                        if x mod t = 0 then
                                begin
                                        nt:=false;
                                        exit;
                                end;
       nt:=true;
       end;
end;
begin
assign(f1,'bai1.inp');
assign(f2,'bai1.out');
reset(f1);
readln(f1,n);
maxnt:=0;
somax:=0;
for i:=1 to n do
begin
        read(f1,a); arr[i]:=a;
        if a>1 then
        if nt(a) then  if maxnt < a then maxnt:=a;
end;
close(f1);
for i:=1 to n do
begin
        dem:=0;
        for j:=i to n do
        if arr[j]=arr[i] then inc(dem);
         if somax < dem then
         begin
         somax:=dem;
         so:=arr[i];
         end;
end;
rewrite(f2);
writeln(f2,maxnt);
write(f2,so);
close(f2);
end.
