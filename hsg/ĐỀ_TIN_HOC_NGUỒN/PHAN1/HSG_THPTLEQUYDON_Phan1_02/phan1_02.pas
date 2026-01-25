const
	f1='tiam.inp';
	f2='tiam.out';
var
	a,b,c:array[1..150] of integer;
	n,m,dem:byte;	
	f:text;
	
procedure nhap;
var i:byte;
begin
	assign(f,f1);
	reset(f);
	read(f,n);
	read(f,m);
	for i:=1 to n do
		read(f,a[i]);
	for i:=1 to m do
		read(f,b[i]);
	close(f);
end;
procedure xuli;
var i,j:byte;
	co:boolean;
begin
	assign(f,f2);
	rewrite(f);
	dem:=0;
	for i:=1 to n do
		if a[i]<>b[i] then
		begin			
			c[dem+1]:=i+dem;
			inc(dem);
			for j:=i to n do
			begin				
				a[j]:=a[j+1];				
			end;
		end;
	for i:=1 to m do
		if b[i]<>a[i] then
		begin
			co:=FALSE;
			break;
		end
		else
			co:=TRUE;
	if co=TRUE then
		begin
			writeln(f,'CO');
			for j:=1 to dem do
				write(f,c[j],' ');
		end
		else
			writeln(f,'KHONG');
	close(f)
end;

begin
	nhap;
	xuli;	
end.
