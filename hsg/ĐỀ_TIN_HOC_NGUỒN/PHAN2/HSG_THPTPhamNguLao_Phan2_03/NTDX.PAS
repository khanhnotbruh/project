var     x,sum,i:longint;
        f:array[1..1000000] of longint;
function check(a:longint):longint;
var     c,x:string;
        t:char;
begin
        if a<10 then exit(0);c:='';x:='';
        while a>0 do
        begin
                t:=chr(a mod 10 +48);
                c:=c+t;x:=t+x;
                a:=a div 10;
        end;
        if c=x then exit(0) else exit(1);
end;
procedure sang;
var     j:longint;
begin
        fillchar(f,sizeof(f),0);
        i:=2;f[1]:=1;
        while i<=trunc(sqrt(1000000)) do
        begin
                while f[i]=1 do inc(i);
                for j:=2 to 1000000 div i do f[i*j]:=1;
                inc(i);
        end;
        FOR I:=1 TO 1000000 DO IF F[I]=0 THEN F[I]:=CHECK(I);
end;
procedure solve(a:longint);
begin
        if a<=0 then exit;
        if f[a]=0 then inc(sum);
              
end;
begin
        ASSIGN(INPUT,'NTDX.INP');RESET(INPUT);
        ASSIGN(OUTPUT,'NTDX.OUT');REWRITE(OUTPUT);
        sang;sum:=0;
        while not eof do
        begin
                read(x);
                SOLVE(X);
        end;
        writeln(sum);
   
end.

