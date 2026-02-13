const
    fi='bai4.inp';
    fo='bai4.out';
type mang=array[1..1000] of longint;
var
    a,b,k:mang;
    i,n:longint;
    f1,f2:text;

function uoc(n:longint):longint;
var
    d,i:longint;
begin
    d:=0;
    for i:=1 to n do
        if (n mod i = 0) then inc(d);
    uoc:=d;
end;

procedure sort(l,r:longint);
var
    i,j:longint;
    x,y:longint;
begin
    i:=l;
    j:=r;
    x:=b[(l+r) div 2];
    repeat
        while b[i]<x do inc(i);
        while x<b[j] do dec(j);
        if i<=j then
            begin
                y:=b[i];
                b[i]:=b[j];
                b[j]:=y;
                inc(i);
                dec(j);
            end;
    until i>j ;
    if l<j then sort(l,j);
    if i<r then sort(i,r);
end;


procedure demsolop(a:mang);
var
    d,d2,i,j,g:longint;
begin
    for i:=1 to n do
        b[i]:=uoc(a[i]);

    sort(1,n);
    d:=0;
    k[1]:=b[1];
    j:=1;
    for i:=1 to n do
        if b[i]<>b[i+1] then
        begin
            inc(d);
            inc(j);
            k[j]:=b[i+1];
        end;

    writeln(f2,d);

    for i:=1 to j-1 do
    begin
        d2:=0;
        for g:=1 to n do
            if k[i]=b[g] then inc(d2);
        writeln(f2,k[i],#32,d2);
    end;
end;

begin
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    readln(f1,n);

    while not eoln(f1) do
        for i:=1 to n do read(f1,a[i]);

    demsolop(a);
    close(f1);
    close(f2);
end.
