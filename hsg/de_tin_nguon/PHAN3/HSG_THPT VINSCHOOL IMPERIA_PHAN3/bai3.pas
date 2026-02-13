const
        tfi = 'bai3_3.inp';
        tfo = 'bai3_3.out';
var
        fi,fo           : text;
        st              : string;
        n,i,k             : longint;
procedure nhap;
begin
        assign(fi,tfi); reset(fi);
                read(fi,st);
        close(fi);
end;
procedure xuli;
begin
        k := pos ('{',st);
        while pos('}',st) <> 0 do delete(st,k,pos('}',st)-k+1);
end;
procedure inkq;
begin
        assign(fo,tfo); rewrite(fo);
                write(fo,st);
        close(fo);
end;
BEGIN
        nhap;
        xuli;
        inkq;
END.

