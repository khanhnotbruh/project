var f1,f2:text;
i,j,l,lmax:longint;
ok:boolean;
s,st,ans:ansistring;
begin
assign(f1,'bai2.inp');reset(f1);
assign(f2,'bai2.out');rewrite(f2);
readln(f1,s);
readln(f1,st);
for i:=1 to length(s) do
begin
if pos(s[i],st)<>0 then
begin
        ans:=ans+s[i];
        for j:=i+1 to length(s) do
        if pos(ans+s[j],st)<> 0 then
        begin
        	ans:=ans+s[j];
        	l:=length(ans);
        	if l>lmax then lmax:=l;
        end
        else break;
end;
ans:='';
end;
write(f2,lmax);
close(f1);close(f2);
end.
