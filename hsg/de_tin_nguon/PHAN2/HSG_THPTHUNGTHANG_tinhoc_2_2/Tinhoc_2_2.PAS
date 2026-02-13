program bai2;
var f1,f2: text;
a,b: array[0..1000000] of longint;
i,n,m,v: longint;
begin
assign(f1,'bai2.inp');reset(f1);
assign(f2,'bai2.out');rewrite(f2);
readln(f1,n,m);
for i:= 1 to n do
begin
read(f1,a[i]);
if a[i]>= m then
        begin
                v:=i;
                b[i]:=b[i-1]+v;;
        end
        else
        b[i]:=b[i-1]+v;
end;
write(f2,b[i]);
close(f1);close(f2);
end.
