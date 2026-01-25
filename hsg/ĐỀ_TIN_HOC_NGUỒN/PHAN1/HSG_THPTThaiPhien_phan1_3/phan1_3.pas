program BAI_1;
var     f:text;
        a:array[1..1000] of boolean;
        x:char;
        t,diem:real;
        i,n:integer;
procedure inp;
begin
        assign(f,'diem.inp'); reset(f);
        while not eof(f) do
        begin
                n:=n+1;
                read(f,x);
                if x='D' then a[n]:=true else a[n]:=false;
        end;
end;
procedure outp;
begin
        assign(f,'diem.out'); rewrite(f);
        write(f,diem:1);
        close(f);
end;
procedure xuli;
begin
        t:=0.5;
        i:=0;
        diem:=0;
        repeat
                i:=i+1;
                while (a[i]) and (i<=n) do
                begin
                        t:=t+0.5;
                        diem:=diem+t;
                        i:=i+1;
                end;
                t:=0.5;
        until i>n;
end;
begin
        inp;
        xuli;
        outp;
end.
