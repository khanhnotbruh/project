uses crt;
var
        s: string;
        fi, fo: text;
        i: integer;
        kq: boolean;
begin
        clrscr;
        assign(fi,'xaudx.inp');
        assign(fo,'xaudx.out');
        reset(fi);
        rewrite(fo);
        readln(fi,s);
        kq := true;
        for i:= 1 to length(s) div 2 do
        begin
                if (s[i] <> s[length(s) - i + 1]) then
                begin
                        kq := false;
                        break;
                end;
        end;
        if (kq) then write(fo,'co') else write(fo,'khong');
        close(fi);
        close(fo);
end.
