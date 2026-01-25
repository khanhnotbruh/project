program bai4;
var fi,fo:text;
i,n,m,vt,g,tb,kc,kcmax,ans:longint;
a:array[1..1000000] of longint;
ok:boolean;
begin
assign(fi,'bai4.inp'); reset(fi);
assign(fo,'bai4.out'); rewrite(fo);
readln(fi,n,m);
read(fi,a[1]);ans:=n;
for i:=2 to n do
begin
read(fi,a[i]);
kc:=a[i]-a[i-1];
if kc<ans then ans:=kc;
end;
ok:=true;
while ok=true do
begin
        i:=2;vt:=1;g:=m-1;
        while (i<=n) do
                begin
                        if a[i]-a[vt] >=ans  then
                                begin
                                        dec(g);
                                        vt:=i;
                                        inc(i);
                                end else inc(i);
                        if g=0 then break;
                end;
        if g=0 then
                inc(ans)
                else ok:=false;

end;
write(fo,ans-1);
close(fi); close(fo);
end.
