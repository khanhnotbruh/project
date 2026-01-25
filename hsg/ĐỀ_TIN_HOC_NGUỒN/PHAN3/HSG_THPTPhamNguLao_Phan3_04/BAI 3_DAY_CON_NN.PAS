program Do_dai_day_con_ngan_nhat;
uses crt;
var f,g:text;
   dx,dau,dem,i,n:integer;
    kt:boolean; t,k:longint;
    a:array[1..20000] of integer;
BEGIN
 Clrscr;
 assign(f,'bai2_DCNN.inp');
 assign(g,'bai2_DCNN.out');
 reset(f); rewrite(g);
 readln(f,n,k);
 kt:=false;
 dem:=0;
 For i:=1 to n do
  Read(f,a[i]);
 For dx:=1 to n do
  if kt=false then
   for dau:=1 to n-dx+1 do
      if kt=false then
       begin
        t:=1;
        for i:=dau to dx+dau-1 do
         t:=t*a[i];
        if t mod k=0 then
         begin
          dem:=dx;
          kt:=true;
         end;
       end;
  write('Day da cho la: ');
  For i:= 1 to n do
    write(a[i],' '); writeln;
  write('Do dai nho nhat cua day con tren co tong chia het cho  ',k,' la: ',dem);
  write(g,dem);
  close(f); close(g);
 Readln;
 END.
