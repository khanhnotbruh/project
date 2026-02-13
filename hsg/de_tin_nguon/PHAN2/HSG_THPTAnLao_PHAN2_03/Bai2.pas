var a,b,n,x:int64;
    luu:ansistring;
    f,g:text;

function chia(a,b:int64):ansistring;
    var luu,x:int64;
        ans:ansistring;
    begin
        luu:=a; ans:='';
        repeat
        begin
            luu:=luu*10;
            x:=luu div b;
            luu:=luu mod b;
            ans:=ans+chr(x+48);
        end
        until luu=a;
        exit(ans);
    end;

begin
    assign(f,'c2snt.inp'); reset(f);
    assign(g,'c2snt.out'); rewrite(g);
    readln(f,a); readln(f,b); readln(f,n);
    a:=a mod b;
    luu:=chia(a,b); x:=length(luu); n:=n mod x;
    if n=0 then writeln(g,luu[x]) else writeln(g,luu[n]);
    close(f); close(g);
end.