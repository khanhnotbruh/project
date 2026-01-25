uses math;
const
    fi='bai4.inp';
    fo='bai4.out';
var t,m:longint;
    n,a,res:int64;
    p,d:array[1..100000] of int64;
function getpow(a,n:int64):int64;
begin
    getpow:=0;
    repeat
        n:=n div a;
        inc(getpow,n);
    until n<=1;
end;
procedure pt(a:int64);
var i:longint;
begin
    fillchar(d,sizeof(d),0);
    m:=0;
    i:=1;
    while i<=sqrt(a) do
        begin
            inc(i);
            if a mod i = 0 then
                begin
                    inc(m);
                    p[m]:=i;
                end;
            while a mod i = 0 do
                begin
                    inc(d[m]);
                    a:=a div i;
                end;
        end;
    if a>1 then
        begin
            inc(m);
            p[m]:=a;
            inc(d[m]);
        end;
end;
procedure xuli;
var i:longint;
    c:int64;
begin
    res:=high(int64);
    pt(a);
    for i:=1 to m do
        begin
            c:=getpow(p[i],n);
            res:=min(res,c div d[i]);
        end;
    writeln(res);
end;
BEGIN
    assign(input,fi); reset(input);
    assign(output,fo); rewrite(output);
    readln(t);
    while t<>0 do
        begin
            dec(t);
            readln(n,a);
            xuli;
        end;
    close(input);
    close(output);
END.

