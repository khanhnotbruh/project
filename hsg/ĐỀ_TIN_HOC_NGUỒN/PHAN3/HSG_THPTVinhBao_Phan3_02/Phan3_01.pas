program dasd;
var fi,fo:text;
    a:array[1..300] of int64;
    dem,i,n:integer;
function kt(n:int64):boolean;
var tam,tam1:integer;
begin
 if n<10 then exit(false);
 tam:=n mod 10;
 n:= n div 10;
 while n>0 do begin
       tam1:=n mod 10;
       if tam<=tam1 then exit(false);
       tam:=tam1;
       n:=n div 10;
       end;
 kt:=true;
end;
begin
 assign(fi,'aa3.inp');reset(fi);
 assign(fo,'aa3.out');rewrite(fo);
 readln(fi,n);
 dem:=0;
 for i:=1 to n do begin
     readln(fi,a[i]);
     if kt(a[i])=true then dem:=dem+1;
     end;
 write(fo,dem);
 close(fi);
 close(fo);
end.
