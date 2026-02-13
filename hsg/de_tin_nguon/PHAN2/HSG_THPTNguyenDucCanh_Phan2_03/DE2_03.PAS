program bai3;
const fi='DE2_03.inp';
      fo='DE2_03.out';
var a:array[1..1000] of integer;
    T,n,j,i,dem,l:integer;
    f1,f2:text;
function sht(x:integer):boolean;
    var m,k:integer;
    begin
    m:=0;
    sht:=false;
    for k:=1 to x div 2 do
    if x mod k=0 then m:=m+k;
    if m = x then  sht:= true;
    end;
BEGIN
     assign(f1,fi);
     assign(f2,fo);
     reset(f1);
     rewrite(f2);
     readln(f1,n);
     for i:=1 to n do read(f1,a[i]);
     for i:=1 to n-1 do
     begin
     t:=a[i];
     for j:= i+1 to n do
         begin
         t:=t+a[j];
         if sht(t)=true then
         begin
         dem:=dem+1;
         for  l:= i to j do write(f2,a[l]:3);
         writeln(f2);
         end;
         end;
     end;
     if dem=0 then  write(f2,'khong co');
     close(f1);
     close(f2);
end.