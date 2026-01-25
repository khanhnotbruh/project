program cau1;
var
a,max: string;
dem: byte;
begin

writeln('nhap xau:');
read(a);
max:='';
dem:=0;
while length(a) <>0 do
begin
dem:=dem+1;
if a[1] <> '.' then if pos('.',a) >length(max) then
max:=copy (a,1,pos('.',a));
delete(a,1,pos('.',a));
end;
writeln(dem,' ',max);
readln;
end.
