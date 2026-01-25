const 
	f1='sokhongdoi.inp';
	f2='sokhongdoi.out';
var n:byte;
	f:text;
	cs:byte;
	a,b:array[1..5] of char;
procedure nhap;
begin
	assign(f,f1);
	reset(f);
	read(f,n);
	close(f);
end;

procedure nhapmang;
begin
	a[1]:='0';	b[1]:='0';
	a[2]:='1';	b[2]:='1';
	a[3]:='6';	b[3]:='9';
	a[4]:='8';	b[4]:='8';
	a[5]:='9';	b[5]:='6';
end;

function ktra(c:char):boolean;
var m:byte;
begin
	for m:=1 to 5 do
		if a[m]=c then 
		begin
			cs:=m;
			ktra:=true;
			break;
		end
		else ktra:=false;
end;

procedure xuli;
var k,k1:longint;
	code,i:byte;
	j,x:longint;
	s,st:string;
begin
	assign(f,f2);
	rewrite(f);
	k:=1;
	for i:=1 to n-1 do
		k:=k*10;
		k1:=k*10-1;
	for j:=k to k1 do
		begin
		st:='';
		str(j,s);
		for i:=1 to n do
		begin
			if ktra(s[i])=true then
			st:=b[cs]+st;
		end;
		val(st,x,code);
		if j=x then writeln(f,x);
		end;
	close(f);
end;

begin
nhap;
nhapmang;
xuli;
end.
