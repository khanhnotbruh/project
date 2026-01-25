Program bai2_2;
var d: array[1..1000] of longint;
    n: longint;
    i,j: longint;
    max: longint;
    fi, fo: text;
BEGIN
   assign(fi,'BAI2_02.INP'); reset(fi);
   assign(fo,'BAI2_02.OUT'); rewrite(fo);
   read(fi,n);
   for i:=1 to n do
      begin
         read(fi,j);
         inc(d[j]);
      end;
   max:=d[1];
   for i:=2 to 1000 do
      if max<d[i] then max:=d[i];
   for i:=1 to 1000 do
      if d[i]=max then writeln(fo,i);
   close(fi); close(fo);
END.
