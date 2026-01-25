uses    crt;
var     a,b,k:array[1..1000] of longint;
        i,j,h,l,n,m:integer;
        f1,f2:text;
begin
        clrscr;
        assign(f1,'bai4.inp');
        reset(f1);
        assign(f2,'bai4.out');
        rewrite(f2);
        read(f1,n,m);
        for i:=1 to n do read(f1,a[i]);
        for i:=1 to m do read(f1,b[i]);

        i:=1;j:=1;
        repeat
        if a[i]=b[j] then
        begin
                inc(i);
                inc(j);
        end
        else
        begin
                inc(h);
                k[h]:=i; 
                inc(i);
        end;
        until i>n;

        if (i>n) and (j>m) and (n<>m) then 
        begin					
                writeln(f2,'CO');		
                FOR l:=1 TO H DO write(f2,k[l],' ');
        end
        else write(f2,'KHONG');
        close(f1);
        close(f2);
      
end.

