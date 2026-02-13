Program bai1;
Var     s:string;
        C:char;
        i, j, dau, cuoi : integer;
        f1, f2:text;

BEGIN
        assign(f1,'DE1_01.inp');
        reset(f1);
        assign(f2,'DE1_01.out');
        rewrite(f2);
        readln(f1,C);
        readln(f1,s);
        i:=1; dau:=0;cuoi:=0;
        while i<=length(s)do
        begin
        while (s[i] <> C) and (i <=length(s)) do inc(i);
        j:=i;
        while (s[i] = C)  do inc(i);
        if i-j > cuoi - dau then
           begin
           dau:=j;
           cuoi:=i;
           end;
        end;
        if cuoi-dau > 0 then
                for i:= dau to cuoi -1 do write (f2,s[i])
        else writeln (f2,'khong co xau nhu vay');
        close(f1);
        close(f2);
 END.