
program xauconaba;
const
	f1='xau.inp';
	f2='xau.out';
var
	s1,s2,st:string;
	i,n:byte;
	f:text;

procedure nhap;
begin
	assign(f,f1);
	reset(f);
	readln(f,s1);
	readln(f,s2);
	close(f);
end;

procedure xuat;
begin
	assign(f,f2);
	rewrite(f);
	write(f,n);
	close(f);
end;

procedure xuli;
begin
	writeln(length(s2));
	for i:= 1 to length(s2)-length(s1)+1 do
	begin
		st:=s2[i]+s2[i+1]+s2[i+2];
		if s1=st then
			inc(n);
	end;
end;
begin
nhap;
xuli;
xuat;
end.
