Program chuoidoixung;
const
	f1='bai1.inp';
	f2='bai1.out';
var 
	s,st:string;
	i:byte;
	k:boolean;
	f:text;
procedure Nhap;
	begin
	assign(f,f1);
	reset(f);
	read(f,s);
	close(f);
	end;
procedure Xuli;
	begin
	for i:=length(s) downto 1 do
		st:=st+s[i];
	if st=s then k:=true
		else k:=false;
	end;
procedure Xuat;
	begin
	assign(f,f2);
	rewrite(f);
	if k=true then write(f,'CO')
		else write(f,'KHONG');
	close(f);
	end;
begin
Nhap;
Xuli;
Xuat;
end.
