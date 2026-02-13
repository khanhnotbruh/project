Progam bai4;
Const 
	f1='bai4.inp';
	f2='bai4.out';
var
	a,b:string;
	f:text;
	s:string;
procedure nhap;
begin
	assign(f,f1);
	reset(f);
	readln(f,a);
	read(f,b);
	close(f);
end;
function sapxep(x:string):string;
var i,j:byte;
	k:char;
begin
	for i:=1 to length(x)-1 do
		for j:=i+1 to length(x) do
			if x[i]<x[j] then
			begin
				k:=x[i];
				x[i]:=x[j];
				x[j]:=k;
			end;
	sapxep:=x;
end;
procedure xuli;
var tong:real;
	m,n:real;
	code,code1:integer;
begin
	val(sapxep(a),n,code);
	val(sapxep(b),m,code);
	tong:=n+m;
	str(trunc(tong),s);
end;
procedure xuat;
begin
	assign(f,f2);
	rewrite(f);
	write(f,sapxep(s));
	close(f);
end;
Begin
	nhap;
	xuli;
	xuat
End.
