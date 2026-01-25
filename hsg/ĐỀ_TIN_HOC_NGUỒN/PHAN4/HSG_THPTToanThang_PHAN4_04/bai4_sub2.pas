program bai4;
var f1,f2:text;
a:array[1..1000000]of longint;
n,i,t,vt,ans,g,m:longint;
ok:boolean;
begin
assign(f1,'bai4.inp');reset(f1);
assign(f2,'bai4.out');rewrite(f2);
readln(f1,n,m);
for i:=1 to n do read(f1,a[i]);
close(f1);
ans:= (a[n]-a[1]) div (m-1);
ok:=false;
while ok =false do
begin
        i:=n-1;
        vt:=i+1;
        g:=m-1;
        while i>0 do
        begin
        if a[vt]-a[i] >=ans then
                begin
                        vt:=i;
                        dec(i);
                        dec(g);
                end
                else dec(i);
        end;
        if g=0 then  begin ok:=true; break; end
 	else dec(ans);
end;
write(f2,ans);
close(f2);
end.
