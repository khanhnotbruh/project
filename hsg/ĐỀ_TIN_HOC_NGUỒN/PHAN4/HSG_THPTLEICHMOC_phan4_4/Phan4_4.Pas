const
        fi='Phan4_4.inp';
        fo='Phan4_4.out';
var
        f1,f2:text;
        a:array[1..1000] of integer;
        n,i,t,sl,cs:integer;
begin
        assign(f1,fi);
        assign(f2,fo);
        reset(f1);
        rewrite(f2);
        n:=0;
        sl:=0;
        t:=0;
        while not eof(f1) do
        begin
                inc(n);
                read(f1,a[n]);
        end;
        a[n+1]:=1;
        for i:=1 to n do
        if a[i] mod 2=0 then
        inc(t)
        else
        begin
                if t>sl then
                        sl:=t;
        t:=0;
        end;
        if sl>1 then
        write(f2,sl)
        else
        write(f2,'khong');
        close(f1);
        close(f2);
end.