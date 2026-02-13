const
        fi='lim15.inp';
        fo='lim15.out';
var
        f1,f2:text;
        s,kq:string;
        i:integer;
begin
        assign(f1,fi);
        assign(f2,fo);
        reset(f1);
        rewrite(f2);
        while not eoln(f1) do
        begin
                readln(f1,s);
                kq:=lowercase(s);
                while s[1]=' ' do
                delete(s,1,1);
                if s[length(s)]<>' ' then
                s:=s+' ';
                while pos(' ',kq)<>0 do
                begin
                        write(f2,upcase(copy(kq,1,1)));
                        write(f2,copy(kq,2,pos(' ',kq)-2));
                        delete(kq,1,pos(' ',kq));
                        writeln(f2);
                end;
        end;
        close(f1);
        close(f2);
end.