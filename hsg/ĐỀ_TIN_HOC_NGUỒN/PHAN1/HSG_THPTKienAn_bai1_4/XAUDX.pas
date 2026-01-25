program baitap1;
const
	f1='xau.inp';
	f2='xau.out';
var	s:string;
	n,max:integer;
	f:text;
procedure nhap;
begin
	assign(f,f1);
	reset(f);
	readln(f,n);
	readln(f,s);
	close(f);
end;
procedure xuat;
begin
	assign(f,f2);
	rewrite(f);
	write(f,max);
	close(f);
end;
function doixung(s:string):boolean;
var i:integer;
	dx:boolean;
begin
	for i:=1 to length(s) do
		begin
			if s[i]<>s[length(s)-i+1] then
			begin
				dx:=FALSE;
				break;
			end
			else	dx:=TRUE;
		end;
	doixung:=dx;
end;
procedure xuli;
var i,j,k:integer;
	st:string;
begin
	for i:=1 to n do
		for j:=2 to n do
		begin
			st:='';
			for k:=i to i+j-1 do
			st:=st+s[k];				
			if doixung(st)=TRUE then
			if length(st)>max then
			max:=length(st);
		end;	
	writeln(max);		
end;
begin
nhap;
xuli;
xuat;
end.
