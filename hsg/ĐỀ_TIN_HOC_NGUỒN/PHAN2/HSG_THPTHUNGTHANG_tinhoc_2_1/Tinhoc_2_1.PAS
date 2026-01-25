program bai1;
var f1,f2:text;
s:ansistring;
j:char;
i: longint;
a:array['A'..'Z'] of longint;
begin
assign(f1,'bai1.inp');reset(f1);
assign(f2,'bai1.out');rewrite(f2);
readln(f1,s);
close(f1);
fillchar(a,sizeof(a),0);
s:=upcase(s);
for i:= 1 to length(s) do inc(a[s[i]]);
for j:='A' to 'Z' do if a[j]<> 0 then  writeln(f2,j,' ',a[j]);
close(f2);
end.
