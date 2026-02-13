program bai3;
var a,b:array[1..1000000] of longint;
f1,f2:text;
k,m,i,j,maxt,n:longint;
t:int64;
begin
assign(f1,'bai3.inp');reset(f1);
assign(f2,'bai3.out');rewrite(f2);
readln(f1,n,m,k);maxt:=0;
fillchar(a,sizeof(a),0);
for i:=1 to n  do
begin
	read(f1,t);
	if maxt<t then maxt:=t;
	inc(a[t]);
end;
i:=maxt;j:=0;t:=0;
while i>0 do
begin
        while a[i]>0 do
                begin
                        inc(j);
                        b[j]:=i;
                        dec(a[i]);
                end;
dec(i);
end;
for i:=1 to j do
if i mod m <> 0 then t:=t+b[i]*k;
write(f2, t);
close(f1);close(f2);
end.
