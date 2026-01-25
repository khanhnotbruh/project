const
    fi='bai4.inp';
    fo='bai4.out';
type mang=array[1..150] of longint;
var
    f1,f2:text;
    n,m,i,j,x:integer;
    a,b,c,kq:mang;

procedure tia;
var
    i,j,z:longint;
begin
    j:=1;
    z:=0;
    x:=0;
    for i:=1 to n do
        begin
            if a[i]=b[j] then
                begin
                    inc(z);
                    kq[z]:=a[i];
                    inc(j);
                end
            else
                begin
                    inc(x);
                    c[x]:=i;
                end;
        end;
end;

function sosanh:boolean;
var
    i:longint;
begin
    tia;
    for i:=1 to m do
        if b[i]<>kq[i] then exit(false);
    exit(true);
end;

begin
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    readln(f1,n,m);
    for i:=1 to n do read(f1,a[i]);
    readln(f1);
    for i:=1 to m do read(f1,b[i]);
    if sosanh then
        begin
            writeln(f2,'CO');
            for j:=1 to x do write(f2,c[j],#32);
        end
    else write(f2,'KHONG');
    close(f1);
    close(f2);
end.
