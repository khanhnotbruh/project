PROGRAM cau2;
uses crt;
var n,j,i,c,imax:byte;
a,b:array[1..100] of integer;
max,gt:integer;
begin
clrscr;
    write('nhap so phan tu cua mang n = ');readln(n);
    for i:=1 to n do
    begin
        write('a[',i,'] = ');readln(a[i]);
    end;
    write('day ban dau : ');
    for i:=1 to n do
    write('  ',a[i]);
    writeln;
                        { a }
    write('nhap vi tri muon them : ');readln(j);
    while (j>n) do
    begin
        write('khong hop le moi nhap lai : ');readln(j);
    end;
    write('nhap gia tri muon them : ');readln(gt);
    for i:=n+1 downto j+1 do
    a[i]:=a[i-1];
    a[j]:=gt;
    n:=n+1;
    write('day sau khi them : ');
    for i:=1 to n do
    write('  ',a[i]);
    writeln;
    repeat
    begin
        write('nhap so k < n : ');readln(j);
    end;
    until(j<n);
    if ( j<=n div 2) then
       for i:=1 to j do
       begin
       gt:=a[i];
       a[i]:=a[n-j];
       a[n-j]:=gt;
       j:=j-1;
       end
    else
    begin
        for i:=1 to j do
        b[i]:=a[i];
        c:=j+1;
        for i:=1 to n-j do
        begin
        a[i]:=a[c];
        c:=c+1;
        end;
        c:=1;
        for i:=n-j+1 to n do
        begin
        a[i]:=b[c];
        c:=c+1;
        end;
    end;
    write('day sau khi dich chuyen la : ');
    for i:=1 to n do
    write('  ',a[i]);
    writeln;
readln;   end.