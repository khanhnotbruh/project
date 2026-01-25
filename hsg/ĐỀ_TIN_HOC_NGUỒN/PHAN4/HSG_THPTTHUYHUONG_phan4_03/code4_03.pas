type mang = array[1..10000] of longword;
var t1       : text;
    n,i,j,k,max,vtd,vtc   : longword;
    b,tb, tc      : longword;
    a,c           : mang;

begin
 assign(t1,'Bai4.inp'); reset(t1);
 read(t1,n,b);
 for i := 1 to n do read(t1,a[i], c[i]);
 close(t1);
 max := 0 ; i := 1;
 while i <= n do
  begin
   tb := a[i];
   j := i + 1;
   while (j <= n) and (tb < b) do
    begin
     tb := tb + a[j];
     inc(j);
    end;
   if tb<=b then
    begin
      tc:=0;
      for k:=i to j-1 do tc:=tc+c[k];
      if max < tc then
       begin
        max := tc;
        vtd:=i;
        vtc:=j-1;
       end;
    end;
   inc(i)
  end;
  assign(t1,'Bai4.out'); rewrite(t1);
  writeln(t1,max);
  for i:=vtd to vtc do write(t1,i, ' ');
  close(t1);
end.
