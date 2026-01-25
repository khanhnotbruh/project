program baai2;
var s:array [1..255] of char;
kt:char;
i,n,dem, j:integer;
vt:array [1..255] of integer;
Begin
Write('Nhap do dai xau ky tu n=  '); Readln(n);
for i:=1 to n do
begin
Write('Nhap xau ki tu s[',i,'] = '); Readln(s[i]);
end;
Write('Nhap ki tu '); Readln(kt);
j:=1;  dem:=0;
For i:=1 to n do
if s[i]=kt then
Begin
  dem:=dem+1;
  vt[j]:=i;
  j:=j+1;
end;
Writeln('chuoi ky tw vua nhap la ');
for i:=1 to n do Write(s[i]);
Writeln;
Writeln(kt,' xuat hien ',dem,' lan');
Writeln('tai cac vi tri');
for i:=1 to j-1 do write(vt[i],', ');
Readln;
end.
