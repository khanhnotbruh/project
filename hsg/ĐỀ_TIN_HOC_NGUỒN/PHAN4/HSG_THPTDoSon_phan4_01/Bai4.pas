Program Bai3;
const
   fi='bai4.inp';
   fo='bai4.out';
var  x,y:array[1..1000001] of longint;
     t,m,n,i,q:longint;
     cnt:array[0..4] of longint;

Procedure nhap;
var i:longint;
Begin
  assign(input,fi);
  reset(input);
  assign(output,fo);
  rewrite(output);
  readln(input,t);
end;

procedure QuickSort(l,r:LongInt);
var i,j,x,tg:longint;
begin
  i:=l;
  j:=r;
  x:=y[(l+r) div 2];
  repeat
    while y[i]<x do inc(i);
    while y[j]>x do dec(j);
    if i<=j then
      begin
          tg:=y[i];
          y[i]:=y[j];
          y[j]:=tg;
          inc(i);dec(j);
      end;
  until i>j;
  If l<j then QuickSort(l,j);
  If i<r then QuickSort(i,r);
end;

function findx(l,r,x:longint):longint;
var res,m:longint;
Begin
   res:=-1;
   While l<=r do
   Begin
     m:=(l+r) div 2;
     if y[m]>x then
     begin
        res:=m-1;
        r:=m-1;
     end
     else l:=m+1;
   End;
   findx:=res;
end;

function find1(x:longint):longint;
var res,mid,l,r:longint;
Begin
   res:=-1;
   for mid:=1 to m do
      if y[mid]<=x then res:=mid
      else break;
   find1:=res;
end;

function dem(x:longint):longint;
var ans,i1:longint;
Begin
    if x=0 then exit(0);
    if x=1 then exit(cnt[0]);
    ans:=cnt[0]+cnt[1];
    i1:=findx(1,m,x);
    if i1<>-1 then ans:= ans + m - i1;
    if x=2 then ans:=ans-cnt[3]-cnt[4];
    if x=3 then ans:=ans+cnt[2];
    dem:=ans;
End;

procedure calc;
var i,j:longint;
    ans:int64;
begin
        readln(input,n,m);
        fillchar(cnt,sizeof(cnt),0);
        for i:=1 to n do read(input, x[i]);
        readln(input);
        for i:=1 to m do
        Begin
           read(input, y[i]);
           if y[i]<=4 then inc(cnt[y[i]]);
        end;
        readln(input);
        QuickSort(1,m);
        ans:=0;
        for  i:=1 to N do
        Begin
          ans:=ans + dem(x[i]);
        End;
        writeln(output,ans);
end;
Begin
  nhap;
  for q:=1 to t do calc;
end.
