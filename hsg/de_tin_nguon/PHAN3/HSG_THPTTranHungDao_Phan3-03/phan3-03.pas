
Program tongchuso;
const 
	f1='chuso.inp';
	f2='chuso.out';
var st:string;
	n,max,vt:integer;
	f:text;
	procedure nhap;
begin
	assign(f,f1);
	reset(f);
	read(f,st);
	close(f);
end;
procedure xuli;
var i:integer;
begin
	assign(f,f2);
	rewrite(f);
	for i:=1 to length(st) do
	begin		
		n:=n+ord(st[i])-48;		
		if ord(st[i])-48>max then
			max:=ord(st[i])-48;
	end;
	writeln(f,n);
	writeln(f,max);
	for i:=1 to length(st) do
	begin
		if ord(st[i])-48 = max then
			write(f,i,' ');
	end;
	close(f);
end;
begin
nhap;
xuli;
end.	
