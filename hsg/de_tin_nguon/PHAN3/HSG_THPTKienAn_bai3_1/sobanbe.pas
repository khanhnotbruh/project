Const
	f1='ami.inp';
	f2='ami.out';
var l,h,dem,tong:longint;
	a:array[0..900000] of longint;
	f:text;
procedure nhap;
begin
	assign(f,f1);
	reset(f);
	read(f,l,h);
	close(f);
end;
function in_array():boolean;
var i:longint;
begin
	in_array:=FALSE;
	for i:=1 to dem do
		if a[i] = tong then
		begin
			in_array:=TRUE;
			break;
		end
		else	
			in_array:=FALSE;
end;
procedure xuli;
var i,j,tong2:longint;	
begin
	assign(f,f2);
	rewrite(f);
	dem:=0;
	for i:=l to h do
	begin
		tong:=0;
		for j:=1 to i div 2 do
			if i mod j = 0 then tong:=tong+j;
		if (tong>=l) AND (tong<=h) AND (tong<>i) then
		begin
			tong2:=0;
			for j:=1 to tong div 2 do
				if tong mod j = 0 then tong2:=tong2+j;
			if (tong2 = i) AND (in_array=FALSE) then
			begin
				inc(dem);
				a[dem]:=i;
				writeln(f,i,' ',tong);
			end;
		end;
	end;
	close(f);
end;
Begin
	nhap;
	xuli;
End.
