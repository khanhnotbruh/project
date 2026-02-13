var f:text;
n,m,p,i,x:longint;
begin
assign(f,'bai2.inp');
rewrite(f);
randomize();
n:=3000;m:=3000;p:=3000;
for i:=1 to n+n+p do
begin
 repeat x:=random(123)
 until (x in [48..57]) or ( x in[65..90]) or (x in[97..122]);
 write(f,chr(x));
 end;
close(f);
end.
