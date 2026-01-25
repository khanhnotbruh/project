var
f1,f2:text;
s,x:ansistring;
i,j,n,k:longint;
d1,d2,d3,dem:int64;
ok:boolean;
begin
assign(f1,'bai2.inp');reset(f1);
assign(f2,'bai2.out');rewrite(f2);
read(f1,s);
close(f1);n:=length(s);dem:=0;
for j:=1 to n-5 do
begin
     for i:=6 to  n+1-j do
        begin
          d1:=0;d2:=0;d3:=0;ok:=false;
          x:=copy(s,j,i);
          for k:=1 to length(x) do
          begin
                        if x[k] in ['a'..'z'] then inc(d1) else
                        if x[k] in ['A'..'Z'] then inc(d2) else inc(d3);
                        if (d1>=1) and (d2>=1) and (d3>=1) and ((d1+d2+d3)>=6)then
                        begin
                                ok:=true;
                                break;
                        end;
          end;
           if ok then
            begin
               dem:=dem+n-i-j+2;
               break
            end;
        end;
end;
write(f2,dem);  close(f2);
end.
