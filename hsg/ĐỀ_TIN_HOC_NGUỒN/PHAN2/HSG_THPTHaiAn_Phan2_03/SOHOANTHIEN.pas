var f1,f2:text;
i,j,n,a,s:longint;
begin
assign(f1,'sht.inp');
assign(f2,'sht.out');
reset(f1);rewrite(f2);
readln(f1,n);
for i:=1 to n do
        begin
               read(f1,a);
               s:=1;
               if a>5 then
               for j:=2 to trunc(sqrt(a)) do if a mod j = 0 then
                        if j<> a div j then s:=s+j+a div j
                        else s:=s+j;
               if a=s then write(f2,a,' ');
           end;
close(f1);
close(f2);
end.
