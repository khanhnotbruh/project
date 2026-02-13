var
	n,b,i,t,g,a	: longint;
begin
	readln(n,b);
	read(g);
	t:=b;
	for i:=2 to n do
		begin
		  read(a);
		  if b div g*a+b mod g > t then t:=b div g*a+b mod g;
		  if a < g then g:=a;
		end;
	writeln(t);
end.