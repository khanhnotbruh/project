var f1,f2:text;
a:array[1..100] of longint;
i,j,n,max,t:longint;
begin
assign(f1,'bai3.inp');reset(f1);
assign(f2,'bai3.out');rewrite(f2);
Readln(f1,n);
max:=low(longint);    {miền giá trị nhỏ nhất của kiểu longint, ngược với high} 
for i:=1 to n do readln(f1,a[i]); close(f1);
for i:=1 to n-1 do
begin
        t:=a[i];
        for j:=i+1 to n do
                begin
                        t:=t+a[j];
                        if t> max then max:=t;
                end;
end;
Write(f2,max);
close(f2);
end.
