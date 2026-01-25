const
fi='unzip.inp';
fo='unzip.out';
var st,xso:string;
f,g:text;

i,j,k,n,code:integer;
begin
assign(f,fi);

assign(g,fo);
reset(f);
rewrite(g);
readln(f,st);
j:=1;

while j<=length(st) do
if st[j] in ['0'..'9'] then
begin

i:=j;
xso:='';

while st[i] in ['0'..'9'] do begin xso:=xso+st[i]; i:=i+1; end; val(xso,n,code);
for k:=1 to n do write(g,st[i]);
j:=i+1
end

else begin write(g,st[j]); j:=j+1; end; close(f); close(g);

end.