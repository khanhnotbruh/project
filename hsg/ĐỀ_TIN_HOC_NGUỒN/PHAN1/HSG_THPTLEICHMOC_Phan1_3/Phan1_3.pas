program  nhi_phan; 
uses crt;
var N,i,m,p,t,j,k:integer;
a,b:array[1..100] of integer;
f1,f2:text;
Procedure Nhiphan;
Begin
M:=N;
while m <> 0 do
begin
inc(i);
a[i] := m mod 2;
m:=m div 2;
end;
for t:=i downto 1 do write(f2,a[t]);
End;
Procedure Hexa;
Begin
   p:=N;
while p <> 0 do
begin
inc(j);
b[j] := p mod 16;
p:=p div 16;
end;
for t:=j downto 1 do
   if b[t]<10 then write(f2,b[t])
   else 
      begin
        if b[t]=10 then write(f2,'A');
	if b[t]=11 then write(f2,'B');
	if b[t]=12 then write(f2,'C');
	if b[t]=13 then write(f2,'D');
	if b[t]=14 then write(f2,'E');
	if b[t]=15 then write(f2,'F');
      end;    
End;
Begin clrscr;
    Assign(f1,’D:\Bai1.INP’);
    Reset(f1);
    Assign(f2,’D:\Bai1.OUT’);
    Rewrite(f2);
    Read(N);
Nhiphan; 
writeln;
thapphan;
End.
