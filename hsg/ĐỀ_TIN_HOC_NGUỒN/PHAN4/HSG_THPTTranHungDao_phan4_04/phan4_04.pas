const
    fi='bai3.inp';
    fo='bai3.out';
var
    f1,f2:text;
    n,i:longint;
    s:array[1..1000000] of integer;

procedure sort(l,r:longint);
var
    i,j,x,y:longint;
begin
    i:=l;
    j:=r;
    x:=s[(i+j) div 2];
    repeat
        while s[i]<x do inc(i);
        while x<s[j] do dec(j);
        if i<=j then
            begin
                y:=s[i];
                s[i]:=s[j];
                s[j]:=y;
                inc(i);
                dec(j);
            end;
    until i>j;
    if l<j then sort(l,j);
    if i<r then sort(i,r);
end;

procedure taxi;
var
    d,c,i,dem:longint;
begin
    sort(1,n);
    d:=1;
    c:=n;
    while d<c do
        begin
            if s[d]+s[c]<=4 then
                begin
                    s[c]:=s[d]+s[c];
                    s[d]:=0;
                    inc(d);
                end
            else dec(c);
        end;
        dem:=0;
    for i:=1 to n do
        if s[i]<>0 then inc(dem);
    write(f2,dem);
end;

begin
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    readln(f1,n);
    for i:=1 to n do read(f1,s[i]);
    taxi;
    close(f1);
    close(f2);
end.
