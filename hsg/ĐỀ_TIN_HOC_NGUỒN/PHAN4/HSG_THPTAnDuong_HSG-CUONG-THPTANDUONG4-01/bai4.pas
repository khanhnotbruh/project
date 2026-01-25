const
        tfi = 'xoa_so_0.inp';
        tfo = 'xoa_so_0.out';
var
        fi,fo           : text;
        s,s1,s2         : ansistring;
        a,b,c1,c2  : longint;
        kt              : boolean;
function bdoi (a : longint) : longint;
        var
                st              : ansistring;
                i,x,code        : longint;
        begin
                str(a,st);
                i := 1;
                while i <= length(st) do
                        if st[i] ='0' then delete(st,i,1) else inc(i);
                val(st,x,code);
                exit (x);
        end;
procedure nhap;
begin
        assign (fi,tfi); reset (fi);
                readln (fi,a);
                readln (fi,b);
        close (fi);
end;
procedure xuly;
begin
        kt := true;
        c1 := a + b;
        c2 := bdoi(a) + bdoi (b);
        if bdoi(c1) <> c2 then kt := false else  kt := true;
end;
procedure inkq;
begin
        assign(fo,tfo); rewrite (fo);
                if kt then writeln (fo,'YES') else writeln (fo,'NO');
                write (fo,c2);
        close (fo);
end;
begin
        nhap;
        xuly;
        inkq;
end.






