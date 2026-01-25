var N: longint;
    a: array[0..101] of longint;
	fi,fo:text;
    dapso, soluong, ten, nhat: longint;
BEGIN
	Assign(fi,'bai2.inp');reset(fi);
	Assign(fo,'bai2.out');rewrite(fo);
   read(fi,N);
   for i:=1 to N do read(fi,a[i]);
   dapso:=0; nhat=0;
   for i:=1 to n do
   begin
      soluong:=0;
      for j:=1 to n do if a[i]=a[j] then inc(soluong);
      if (soluong>dapso) or ((soluong=dapso) and (a[i]<nhat)) then
      begin
         dapso:=soluong;
         nhat:=a[i];
      end;
   end;
   writeln(fo,nhat,' ',dapso);
close(fi); close(fo);
END.