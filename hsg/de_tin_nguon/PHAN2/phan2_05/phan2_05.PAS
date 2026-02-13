Program Day_con_dai_nhat;
uses crt;
const
     fi='BAI2.INP';
     fo='BAI2.OUT';
     maxN=1000;
     maxK=1000;
var
     a:array[1..maxN]of integer;
     f:array[0..maxN,0..maxN-1]of integer;
     n,k:integer;
procedure Doc_file;
var  f:text;
     i:integer;
begin
    assign(f,fi); reset(f);
    readln(f,N,k);
    for i:=1 to N do read(f,a[i]);
    close(f);
end;
Function tru(x,y:integer):integer;
var temp:integer;
begin
     temp:=(x-y) mod k;
     if temp>=0 then tru:=temp
     else tru:=temp+k;
end;
Procedure xuly;
var i,t:integer;
begin
     f[0,0]:=0;
     for i:=1 to k-1 do f[0,i]:=maxk;
     for i:=1 to n do
     for t:=0 to k-1 do
     if f[i-1,t]<f[i-1,tru(t,a[i])]+1 then
          f[i,t]:=f[i-1,t]
          else
          f[i,t]:=f[i-1,tru(t,a[i])]+1;
end;
Procedure Print;
var i,t:integer;
     s,sum:longint;
     f2:text;
begin
     assign(f2,fo);rewrite(f2);
     s:=0;
     for i:=1 to N do s:=s+a[i];
     writeln(f2,n-f[n,s mod k]);
     i:=n; t:=s mod k;
     sum:=0;
     for i:=n downto 1 do
     if f[i,t]=f[i-1,t] then
     begin
          writeln(f2,'a[',i,']=',a[i]);
          sum:=sum+a[i];
     end
     else
          t:=tru(t,a[i]);
      writeln(f2,'sum=',sum);
      close(f2);
end;
Begin
     Doc_file;
     xuly;
     print;
End.