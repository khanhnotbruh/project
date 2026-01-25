Program so_bac_thang;
const
	f1='BAI2.inp';
	f2='BAI2.out';
var n,i,dem:byte;
	a:array[1..150] of integer;
	f:text;
procedure nhap;
begin
	assign(f,f1);
	reset(f);
	read(f,n);
	for i:=1 to n do
		read(f,a[i]);
	close(f);
end;
procedure xuat;
begin
	assign(f,f2);
	rewrite(f);
	write(f,dem);
	close(f);
end;
procedure xuli;
var st:string;
	j:integer;
	bt:boolean;
begin
	for i:=1 to n do
	begin
		str(a[i],st);
		for j:=1 to length(st)-1 do
			if ord(st[j])-48 < ord(st[j+1])-48 then bt:=TRUE
			else
			begin
				bt:=FALSE;
				break;
			end;
		if bt=TRUE then inc(dem);
	end;
end;
begin
	nhap;
	xuli;
	xuat;
end.

