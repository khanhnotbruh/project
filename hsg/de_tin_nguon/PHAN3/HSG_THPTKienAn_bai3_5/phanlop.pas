const 
	f1='phanlop.inp';
	f2='phanlop.out';
var
	a,b,c:array[1..1000] of word;
	f:text;
	n,i,j,t,dem,k:word;
procedure Nhap;
	begin
		assign(f,f1);
		reset(f);
		read(f,n);
		for i:=1 to n do
		read(f,a[i]);
	end;
procedure Xuli;
	begin
		for i:=1 to n do
		begin
			b[i]:=2;
		for j:=2 to a[i] div 2 do
				if a[i] mod j=0 then inc(b[i]);
			end;
		i:=1;
		repeat
		c[i]:=1;
		for j:=i+1 to n do
			begin
				if b[i]=b[j] then
					begin
						inc(c[i]);
						n:=n-1;
						for t:=j to n do
						b[t]:=b[t+1];
					end;
			end;
		i:=i+1;
		until i>n;
	end;
procedure Xuat;
	begin
		assign(f,f2);
		rewrite(f);
		writeln(f,n);
		for i:=n downto 1 do
		writeln(f,b[i],' ',c[i]);
		close(f);
	end;
begin
Nhap;
Xuli;
Xuat;
end.
