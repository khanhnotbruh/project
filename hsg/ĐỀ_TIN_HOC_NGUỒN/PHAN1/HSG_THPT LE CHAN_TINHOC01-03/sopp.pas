var     m,R,L:longint;
        f1,f2:text;
        i:longint;
function tonguoc(n:longint):longint;
var      s,i:longint;
begin   s:=1;
        for i:=2 to trunc(sqrt(n)) do
           if  n mod i = 0 then s:=s+i + n div i;
        if trunc(sqrt(n))=sqrt(n) then s:=s-trunc(sqrt(n));
        exit(s);
end;
begin
        assign(f1,'sopp.inp');
        reset(f1);
        assign(f2,'sopp.out');
        rewrite(f2);
        readln(f1,L,R);
        m:=0;
        for i:=L to R do
           if tonguoc(i) > i then inc(m);
        write(f2,m);
        close(f1);
        close(f2);
end.
