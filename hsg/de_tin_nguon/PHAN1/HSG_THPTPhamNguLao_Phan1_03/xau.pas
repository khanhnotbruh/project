var     a:array['a'..'z'] of integer;
        b:array[1..1000] of byte;
        c:array[1..1000] of string;
        i,n:integer;
        f1,f2:text;

procedure nhap;
var     i:integer;
begin
        assign(f1,'xau.inp');
        reset(f1);
        readln(f1,n);
        for i:=1 to n do readln(f1,c[i]);
        close(f1);
end;

function kt(s:string):byte;
var     j:char;
        i:integer;
begin
     fillchar(a,sizeof(a),0);
     if length(s)=0 then exit(0);
     if length(s)=1 then exit(1);
     for i:=1 to (length(s) div 2) do
                begin
                        inc(a[s[i]]);
                        dec(a[s[length(s)+1-i]]);
                end;
     for j:='a' to 'z' do
                if a[j] <> 0 then exit(0);
     exit(1);
end;

procedure ghi;
begin
        assign(f2,'xau.out');
        rewrite(f2);
        for i:=1 to n do writeln(f2,kt(c[i]));
        close(f2);
end;

BEGIN
        nhap;
        ghi;
END.
