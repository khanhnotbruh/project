program BAI2;
var d: array[1..1000] of longint;
    n: longint;
    i,u: longint;
    max: longint;
    fi, fo: text;
BEGIN
   assign(fi,'VNMODEL.INP'); reset(fi);
   assign(fo,'VNMODEL.OUT'); rewrite(fo);
   read(fi,n);
   for i:=1 to n do
      begin
         read(fi,u);
         inc(d[u]);
      end;
   max:=d[1];
   for i:=2 to 1000 do
      if max<d[i] then max:=d[i];
   for i:=1 to 1000 do
      if d[i]=max then writeln(fo,i);
   close(fi); close(fo);
END.
