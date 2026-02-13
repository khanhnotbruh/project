const
    fi='bai4.inp';
    fo='bai4.out';
type mang=array[1..1000] of integer;
var
    f1,f2:text;
    a,b:mang;
    i,n:integer;

procedure qsort(var a:mang);
    procedure sort(l,r:longint);
    var
        i,j,x,y:longint;
    begin
        i:=l;
        j:=r;
        x:=a[(l+r) div 2];
        repeat
            while a[i]<x do inc(i);
            while x<a[j] do dec(j);
            if i<=j then
                begin
                    y:=a[i];
                    a[i]:=a[j];
                    a[j]:=y;
                    inc(i);
                    dec(j);
                end;
        until i>j;
        if l<j then sort(l,j);
        if i<r then sort(i,r);
    end;
begin
    sort(1,n);
end;

procedure thungnuoc;
var
    sum,i,d:longint;
    c:mang;
begin
    sum:=0;
    for i:=1 to n do sum:=sum+a[i];
    for i:=1 to n do c[i]:=0;
    qsort(b);
    i:=1;
    while sum>0 do
        begin
            inc(c[i]);
            dec(sum);
            if c[i]=b[i] then inc(i);
        end;

    d:=0;
    for i:=1 to n do
        if c[i]<>b[i] then inc(d);
    writeln(f2,d);
end;

begin
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    readln(f1,n);
    for i:=1 to n do readln(f1,a[i],b[i]);
    thungnuoc;
    close(f1);
    close(f2);
end.
