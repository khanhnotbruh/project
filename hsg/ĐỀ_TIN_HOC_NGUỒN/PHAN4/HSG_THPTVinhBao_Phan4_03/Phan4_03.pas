program dasd;
var fi,fo:text;
    a,b:array[1..200] of real;
    nho,tam:real;
    i,n,k,j,dem:byte;
begin
 assign(fi,'aa2.inp');reset(fi);
 assign(fo,'aa2.out');rewrite(fo);
 readln(fi,n,k);
 for i:=1 to n do begin read(fi,a[i]);end;
 for i:=1 to n-1 do
     for j:=i+1 to n do
         if b[i]>b[j] then begin tam:=b[i];
                                 b[i]:=b[j];
                                 b[j]:=tam;
                                 end;
 //for i:=1 to n do write(fo,b[i]:0:1,' ');writeln(fo);
 dem:=1;
 if k=1 then nho:=b[1]
 else
     for i:=2 to n do begin
         if b[i]>b[i-1] then dem:=dem+1;
         if dem=k then begin nho:=b[i];break;end;
         end;
 dem:=0;
// writeln(fo,nho);
 for i:=1 to n do
     if a[i]=nho then dem:=dem+1;
 writeln(fo,dem);
 for i:=n downto 1 do
     if a[i]=nho then begin write(fo,i);break;end;
 close(fi);
 close(fo);
end.
