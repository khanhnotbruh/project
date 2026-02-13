var f1,f2:text;
n,t,d,i,j,tg1,tg2,tien:longint;
tg,st:string;
gia:array[1..100000] of word;
qua:array[1..100000] of longint;
begin
assign(f1,'bai4.inp');
assign(f2,'bai4.out');
reset(f1);
readln(f1,T,d);
for i:=1 to d do
readln(f1,gia[i],qua[i]);
close(f1);
for i:=1 to d -1 do
begin
    for j:=i to d do
     if gia[i]>gia[j] then
        begin
             tg1:=gia[i];tg2:=qua[i];
             gia[i]:=gia[j]; qua[i]:=qua[j];
             gia[j]:=tg1;qua[j]:=tg2
        end;
end;
i:=1;tien:=0;
while t<>0 do
        begin
        if qua[i]>t then
                begin
                        tien:=tien+t*gia[i];
                        t:=t-t;
                end
        else
        begin
                tien:=tien+qua[i]*gia[i];
                t:=t-qua[i];
        end;
        inc(i);
end;
rewrite(f2);
write(f2,tien);
close(f2);
end.
