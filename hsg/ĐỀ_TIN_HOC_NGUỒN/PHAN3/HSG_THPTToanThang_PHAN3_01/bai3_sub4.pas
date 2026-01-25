var f1,f2:text;
n,i,j,sh,sl:longint;
d:array[1..1000000] of longint;
procedure sapxep;
var tg:longint;
begin
for i:=1 to n-1 do
for j:=i+1 to n do
if d[i]<d[j] then
        begin
            tg:=d[i];
            d[i]:=d[j];
            d[j]:=tg;
        end;
end;
BEGIN
assign(f1,'bai3.inp');reset(f1);
assign(f2,'bai3.out');rewrite(f2);
readln(f1,n);
for i:=1 to n do read(f1, d[i]);
sapxep;
for i:=1 to n do
if d[i]<>0 then
        begin
        sl:=1;
        for j:=i+1 to n do if d[i]=d[j] then
                begin
                        inc(sl);
                        d[j]:=0;
                end;
        sh:= sl div 10;
        if sl mod 10 >0 then inc(sh);
        writeln(f2, d[i],' ',sh);
d[i]:=0;
end;
close(f1);close(f2);
END.
