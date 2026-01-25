program bai3;
Uses crt;
Const max=1000;
Type arr=array[1..max+1] of integer;
Var
   a:arr;
   x,i,j,n:integer;
   fin,fout:text;
procedure sapxep(Var a:arr; n:integer);
Var
   j,tg:integer;
Begin
 for i:=1 to n-1 do
  for j:=i+1 to n do
   if(a[i]>a[j]) then
   Begin
    tg:=a[i]; a[i]:=a[j]; a[j]:=tg;
   End;
End;
{----------------------------}
BEGIN
 clrscr;
 { Doc du lieu len mang tu tep BAI3.INP }
 assign(fin,'BAI3.INP');
 reset(fin);
 readln(fin,n);
 for i:= 1 to n do read(fin,a[i]);
 close(fin);
 {Sap xep day so tang dan }
 sapxep(a,n);
 { Viet day so ra manf hinh}
 writeln('Day so tang dan');
 for i:=1 to n do write(a[i]:3);
 { Nhap x va chen vao day }
 writeln;
 write('Nhap gia tri x = '); readln(x);
 if x < a[1] then
    Begin
     n:=n+1;
     for i:=n downto 2 do a[i]:=a[i-1];
     a[1]:=x;
    End
 else if x > a[n] then
    Begin
     n:=n+1; a[n]:=x;
    End
 else
    Begin
     i:=1;
     while x >= a[i] do i:=i+1;
     n:=n+1;
     for j:=n downto i+1 do a[j]:=a[j-1];
     a[i]:=x;
    End;
 {Ghi xuong tep BAI3.OUT}
 assign(fout,'BAI3.OUT');
 rewrite(fout);
 writeln(fout,'n = ',n);
 writeln(fout,'x = ',x);
 for i:=1 to n do write(fout,a[i],' ');
 close(fout);
 writeln('OK');
 readln;
END.