Program MuaBut;
const
   fi='bai3.inp';
   fo='bai3.out';
var m,n,i:longint;
  a,b:array[1..1000001] of longint;
  d,s:longint;
  res,sum:int64;
Procedure nhap;
var i:longint;
Begin
  assign(input,fi);
  reset(input);
  assign(output,fo);
  rewrite(output);
  readln(input,n,m);
  for i:=1 to m do
      read(input, a[i]); readln(input);
  for i:=1 to m do
      read(input, b[i]);
end;
procedure QuickSort(l,r:LongInt);
var i,j,x,tg1,tg2:longint;
begin
  i:=l;j:=r;x:=b[(l+r) div 2];
  repeat
    while b[i]>x do inc(i);
    while b[j]<x do dec(j);
    if i<=j then
      begin
          tg1:=b[i];
          b[i]:=b[j];
          b[j]:=tg1;
          tg2:=a[i];
          a[i]:=a[j];
          a[j]:=tg2;
          inc(i);dec(j);
      end;
  until i>j;
  If l<j then QuickSort(l,j);
  If i<r then QuickSort(i,r);
end;
Begin
  nhap;
  QuickSort(1,m);
  s:=1;sum:=0;res:=0;i:=1;d:=1;
  While s<=N do
    begin
      sum:=res+d*b[i];
      d:=d+1;
      inc(s);
      if d>a[i] then
        begin
           i:=i+1;
          res:=sum;
          d:=1;
        end;
    end;
  write(output,sum);
end.
