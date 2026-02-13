program bai2;
var
f1,f2:text;
s:ansistring;
begin
assign(f1,'bai2.inp');reset(f1);
assign(f2,'bai2.out');rewrite(f2);
readln(f1,s);
while pos('++',s)<>0 do delete(s,pos('++',s),1);
while pos('--',s)<>0 do delete(s,pos('--',s),1);
write(f2, s);
close(f1);
close(f2);
end.
