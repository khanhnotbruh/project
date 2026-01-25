program phan1;
var st,s,s1:string;
    j,i,dem,dx:integer;
    tu:array[1..100] of string;
    fi,fo:text;


begin
assign(fi,'bai1.inp');
reset(fi);
assign(fo,'bai1.out');
rewrite(fo);
  Readln(fi,st);
  if length(st)>100 then  writeln(fo,'Xau nhap vao dai hon 100 ki tu! Yeu cau nhap lai!')
  else
        begin
                while st[1]=#32 do delete(st,1,1);
                while st[length(st)]=#32 do delete(st,length(st),1);
                while pos(#32#32,st)<>0 do delete(st,pos(#32#32,st),1);
                dem:=0;st:=st+' ';
                for i:=1 to length(st) do
                   if st[i]<>' ' then s:=s+st[i]
                   else
                        begin
                        dem:=dem+1;
                        tu[dem]:=s;
                        s:='';
                        end;
                for i:=1 to dem do
                   begin
                   s:=tu[i];
                   for j:= length(s) downto 1 do
                   s1:=s1+s[j];
                   if s1=s then dx:=dx+1;
                   s1:='';
                   end;
                writeln(fo,dem);
                write(fo,dx);
        end;
 close(fi);
 close(fo);
end.
