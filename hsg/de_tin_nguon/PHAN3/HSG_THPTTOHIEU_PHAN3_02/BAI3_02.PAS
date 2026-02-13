var f1,f2:text;
s,tg1:string;
arr:array[1..1000] of longint;
ms:array[1..200] of string;
i,j,n,tg,dem:longint;
begin
assign(f1,'BAI3_02.INP');
assign(f2,'BAI3_02.OUT');
reset(f1);
readln(f1,n);
for i:=1 to n do
begin
        readln(f1,s);
        ms[i]:=s;
        dem:=0;
        for j:=1 to length(s) do
        if s[j] in ['0'..'9'] then inc(dem);
        arr[i]:=dem;
end;
close(f1);
for i:=1 to n-1 do
for j:=i to n do
if arr[j]<arr[i] then
begin
tg:=arr[i]; tg1:=ms[i];

arr[i]:=arr[j];ms[i]:=ms[j];
arr[j]:=tg;ms[j]:=tg1;
end; rewrite(f2);
for i:=1 to n do writeln(f2,ms[i]);
close(f2);
end.
