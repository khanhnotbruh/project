var f1,f2:text;
s0,s2,s1,s:string;
n,i:byte;
function mixStr(var s:string):string;
var i:byte;st:string;
begin
       st:='';
       for i:=length(s) downto 1 do st:=st+s[i];
       mixstr:=st;

end;
begin
assign(f1,'bai4.inp');
assign(f2,'bai4.out');
reset(f1);
readln(f1,s0);
read(f1,n);
close(f1);   s:=s0;
rewrite(f2);
for i:=1 to n do if i mod 2 <> 0 then
begin
s:= s+s0;
s0:=s;
end
else
begin
s:=s+ mixstr(s0); s0:=s;
end;

writeln(f2,s2,s1);write(f2,s);
close(f2);
end.

