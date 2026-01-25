const
	f1='bai3.inp';
	f2='bai3.out';
var    i,j,n,ldau, dai,Max: integer;
	a:array[1..150] of integer;
	f:text;
Function TONG(A:KM;m,l:byte):Integer;
Var Tam,i:integer;
Begin
    Tam:=0;
    For i:=m to m+l do Tam:=Tam + A[i];
    TONG:=Tam;
End;
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
	writeln(f,ldau);
writeln(f,max);
	close(f);
end;
procedure xuli;
begin
     Max:=M[1];dai:=1;ldau:=1;
     For i:= 1 to n do
      For  j:=0 to n-i+1 do
           if TONG(M,i,j)> Max then
           Begin ldau:=i; Max:=Tong(M,i,j) ; dai:=j+1 End;
     End;
Begin
Nhap ;
Xuli ;
Xuat ;
End.
