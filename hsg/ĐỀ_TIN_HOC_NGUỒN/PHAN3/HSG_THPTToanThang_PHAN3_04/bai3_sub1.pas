program bai3;
var a:array[1..1000000] of longint;
f1,f2:text;
k,m,i,j,n:longint;
t:int64;
procedure qsort(l,r: longint);
var x,y: longint;
      begin
         i:=l;j:=r;
         x:=a[(l+r) div 2];
         repeat
           while a[i]>x do inc(i);
           while x>a[j] do dec(j);
           if not(i>j) then
             begin
                y:=a[i];
                a[i]:=a[j];
                a[j]:=y;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then qsort(l,j);
         if i<r then qsort(i,r);
      end;
begin
assign(f1,'bai3.inp');reset(f1);
assign(f2,'bai3.out');rewrite(f2);
readln(f1,n,m,k);
for i:=1 to n  do read(f1,a[i]);
qsort(1,n);
t:=0;
for i:= 1 to n do if i mod m <>0 then  t:=t+a[i]*k;
writeln(f2,t);
close(f1);close(f2);
end.
