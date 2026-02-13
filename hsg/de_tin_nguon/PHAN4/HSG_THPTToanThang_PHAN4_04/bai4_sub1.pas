program bai4;
var f1,f2:text;
a:array[1..1000000]of longint;
n,i,m,dmax,dau,cuoi,giua:longint;
function tim(gt:longint):boolean;
var j,t,dem:longint;
begin
tim:=false;
j:=n; dem:=0;
for t:=n-1 downto 1 do
        begin
        if a[j]-a[t]>= gt then
                begin
                        inc(dem);
                        j:=t;
                end;
                if dem=m-1 then exit(true);
        end;

end;
begin
assign(f1,'bai4.inp');reset(f1);
assign(f2,'bai4.out');rewrite(f2);
readln(f1,n,m);
for i:=1 to n do read(f1,a[i]);
dmax:=(a[n]-a[1]) div (m-1);
close(f1);
dau:=1; cuoi:=dmax; giua:=(dau+cuoi) div 2;
while dau<cuoi-1 do
begin
   if tim(giua) then
   dau:=giua
   else cuoi:=giua-1;
   giua:=(dau+cuoi) div 2;
end;if tim(cuoi) then write(f2,cuoi) else
writeln(f2,dau);
close(f2);
end.
