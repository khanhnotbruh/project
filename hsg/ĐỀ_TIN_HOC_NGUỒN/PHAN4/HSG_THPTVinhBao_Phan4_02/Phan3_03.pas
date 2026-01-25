program dasd;
var fi,fo:text;
    i,j,max,tam,n,k,x,y:longint;
    a:array[1..100000] of longint;
    sum:array[1..100000] of qword;
begin
 assign(fi,'b3.inp');reset(fi);
 assign(fo,'b3.out');rewrite(fo);
 readln(fi,n,k);
 for i:=1 to n do readln(fi,a[i]);
 sum[1]:=a[1];
 max:=0;
 for i:=2 to n do begin
    sum[i]:=sum[i-1]+a[i];
    if sum[i] mod k = 0 then
       begin
                tam:=i;
                if tam>max then max:=tam;
                end;
    end;
 for i:=1 to n-1 do
     for j:=i+1 to n do
         if (sum[j]-sum[i]) mod k = 0 then
             begin
                tam:=j-i;
                if tam>max then max:=tam;
                end;
 write(fo,max);
 close(fi);
 close(fo);
end.
