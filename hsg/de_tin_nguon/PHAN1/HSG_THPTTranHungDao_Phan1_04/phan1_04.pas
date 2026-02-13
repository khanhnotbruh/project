const
    fi='bai1.inp';
    fo='bai1.out';
var
    f1,f2:text;
    m,n:longint;

function nto(n:longint):boolean;
var
    ok:boolean;
    i:longint;
begin
    ok:=false;
    if n<2 then exit(false);
    if (n=2) or (n=3) then exit(true);
    for i:=2 to trunc(sqrt(n)) do
        if (n mod i = 0) then exit(false)
        else ok:=true;
    nto:=ok;
end;

function uoc(n,m:longint):boolean;
var
    i,j,t:longint;
    a,b:array[1..1000] of longint;
    ok:boolean;
begin
    j:=0;
    for i:=1 to n do
        if nto(i) and (n mod i = 0) then
            begin
                inc(j);
                a[j]:=i;
            end;

    t:=0;
    for i:=1 to m do
        if nto(i) and (m mod i = 0) then
            begin
                inc(t);
                b[t]:=i;
            end;

    ok:=true;
    i:=0;
    while (i<j) or (i<t) do
        begin
            inc(i);
            if a[i]<>b[i] then exit(false);
        end;

    uoc:=ok;
end;

begin
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    read(f1,n,m);
    if uoc(n,m) then writeln(f2,'YES') else writeln(f2,'NO');
    close(f1);
    close(f2);
end.
