var N,i,j: longint;
    a: array[1..1001] of int64;
    max, dem, ten, nhat: int64;
    f,g:text;

BEGIN
   assign(g,'bai2.inp');reset(g);
   assign(f,'bai2.out');rewrite(f);
   readln(g,N);
   for i:=1 to n do read(g,a[i]);

   max:=0; nhat:=0;
   for i:=1 to n do
   begin
      dem:=0;
      for j:=i to n do if a[i]=a[j] then inc(dem);
      if (dem>max) or ((dem=max) and (a[i]<nhat)) then
      begin
         max:=dem;
         nhat:=a[i];
      end;
   end;
   write(f,nhat,' ',max);
   close(f);close(g);
END.
