var f1,f2:text;
s:string;
i,j,n,dd,dung,k:byte;
mo,dong:array[1..255] of byte;
begin
assign(f1,'J_bonus.inp');
assign(f2,'J_bonus.out');
reset(f1);rewrite(f2);
readln(f1,n);
read(f1,s);
close(f1); k:=0;i:=1;
while i<n do
begin
       dung:=1;dd:=0;
        if s[i]='(' then
                for j:=i+1 to n do
                        begin
                           if s[j]='(' then
                           begin
                                inc(dung);
                                inc(dd);
                           end
                           else dec(dung);
                               if dung =0 then
                                begin
                                         write(f2,2*dd,' ');
                                         inc(i);
                                         break;
                                end;
                        end
                         else inc(i);
end;
close(f2);
end.
