const
        tfi = 'bai1.inp';
        tfo = 'bai1.out';
var
        fi,fo           : text;
        n,i,res,d1,d2     : longint;
procedure nhap;
begin
        assign (fi,tfi); reset(fi);
                read (fi,n);
        close(fi);
end;
procedure xuly;
begin
        d1 :=0; d2 :=0;
        for i:= 1 to trunc(sqrt(n)) do
                if n mod i =0 then inc(d1,2);
        for i := 1 to trunc(sqrt(n+1)) do
                if (n+1) mod i = 0 then inc (d2,2);
        if (n-sqr(trunc(sqrt(n)))=0) then dec(d1);
        if (n+1-sqr(trunc(sqrt(n+1)))=0) then dec(d2);
        res := d1+d2;
end;
procedure inkq;
begin
        assign (fo,tfo); rewrite (fo);
                write (fo,res);
        close(fo);
end;
begin
        nhap;
        xuly;
        inkq;
end.

