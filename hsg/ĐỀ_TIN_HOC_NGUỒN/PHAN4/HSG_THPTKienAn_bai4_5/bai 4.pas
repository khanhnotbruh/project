uses crt;
var
        p, q, i, n: integer;
        fi, fo: text;
function dao(a: integer): integer;
var
        tam: integer;
begin
        tam:= 0;
        while (a <> 0) do
        begin
                tam:= tam * 10 + a mod 10;
                a:= a div 10;
        end;
        exit(tam);
end;
function nt(a: integer): boolean;
var
        i: integer;
        kq: boolean;
begin
        if (a <= 1) then exit(false);
        if (a = 2) or (a = 3) then exit(true);
        if (a > 3) then
        begin
                if (a mod 2 = 0) then exit(false)
                else
                begin
                kq:= true;
                for i:= 3 to trunc(sqrt(a)) do
                begin
                        if (a mod i = 0) then
                        begin
                                kq:= false;
                                break;
                        end;
                end;
                exit(kq);
                end;
        end;
end;
begin
        clrscr;
        assign(fi,'timso.inp');
        assign(fo,'timso.out');
        reset(fi);
        rewrite(fo);
        readln(fi, p);
        readln(fi, q);
        for i:= p to q do
        begin
                if (nt(dao(i))) then writeln(fo,i);
        end;
        close(fi);
        close(fo);
end.
