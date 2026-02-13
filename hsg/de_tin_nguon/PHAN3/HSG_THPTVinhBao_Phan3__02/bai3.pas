program dasd;
var fi,fo:text;
    s,c:string;
    i,j,dem:byte;
begin
 assign(fi,'bai3.inp');reset(fi);
 assign(fo,'bai3.out');rewrite(fo);
 read(fi,s);
 for i:=1 to 10 do begin
     str(i-1,c);
     dem:=0;
     for j:=1 to length(s) do
         if s[j]=c then dem:=dem+1;
     write(fo,dem,' ');
     end;
 close(fi);
 close(fo);
end.
