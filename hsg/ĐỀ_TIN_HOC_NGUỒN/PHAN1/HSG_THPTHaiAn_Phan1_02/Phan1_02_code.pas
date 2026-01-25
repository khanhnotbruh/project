var a,b:int64; f1,f2:text;
    dem,d,c:int64; i:longint;
function nto(x:int64):boolean;
var i:int64;
begin
   nto:=true;
   if x<2 then exit(false);
   if (x=2)or(x=3) then exit(true);
   if(x mod 2=0)or(x mod 3=0) then exit(false);
   i:=5;
   while i<=trunc(sqrt(x)) do
     if (x mod i=0)or(x mod (i+2)=0) then exit(false)
     else i:=i+6;
end;
begin
   assign(f1,'bai1.inp');reset(f1);
   assign(f2,'bai1.out');rewrite(f2);
   read(f1,a,b);
   dem:=0;
    d:=trunc(sqrt(a))+1;
    if frac(sqrt(a))=0 then d:=d-1;
    c:=trunc(sqrt(b));
    while d<=c do
    begin
       if nto(d)then inc(dem);
       inc(d);
    end;
    write(f2,dem);
close(f1); close(f2);
end.