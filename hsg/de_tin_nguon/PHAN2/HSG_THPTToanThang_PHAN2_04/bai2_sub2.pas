var f1,f2:text;
i,j,l,lmax:longint;
ok:boolean;
s,st,ans:ansistring;
begin
assign(f1,'bai2.inp');reset(f1);
assign(f2,'bai2.out');rewrite(f2);
readln(f1,s);
readln(f1,st);lmax:=0;
for i:=1 to length(s) do
	for j:=i to length(s) do
		begin
			ans:=copy(s,i,j+1-i);
			l:= length(ans);
			if pos(ans,st)<> 0 then
			if l>lmax then lmax:=l;
		end;
write(f2,lmax);
close(f1);close(f2);
end.
