Program sohoanthien;
const
	f1='bai2.inp';
	f2='bai2.out';
var
	a:array[1..200] of integer;
	i,n:byte;
	f:text;
	procedure Nhap;
	begin
		assign(f,f1);
		reset(f);
		readln(f,n);
		for i:=1 to n do
			read(f,a[i]);
		close(f);
	end;
	procedure Xuli;
	var j,tong:integer;
	begin
		for i:=1 to n do
			begin
				tong:=0;
				for j:=1 to a[i] div 2 do
				if a[i] mod j=0 then tong:=tong+j;
				if tong<>a[i] then a[i]:=0;
			end;
	end;
procedure Xuat;
	begin
		assign(f,f2);
		rewrite(f);
		for i:=1 to n do
			if a[i]<>0 then writeln(f,a[i]);
		close(f);
	end;
begin
Nhap;
Xuli;
Xuat;
end.
