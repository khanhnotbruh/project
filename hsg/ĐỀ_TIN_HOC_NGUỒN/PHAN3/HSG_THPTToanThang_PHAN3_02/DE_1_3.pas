program bai3;
var     m,n:qword;
        tong:qword;
        st:ansistring;
        i:longint;
        f1,f2:text;
        cs:array[1..15]of qword;
function tim(n:qword):longint;
var
        k,mu,so:int64;
        st:ansistring;
begin
        k:=1; mu:=1;
        while (k<16)and(cs[k]<n)do
                begin
                        n:=n-cs[k];
                        inc(k); mu:=mu*10;
                end;
        if mu =1 then so:=n div k
        else so:=n div k + mu + ord(n mod k>0)-1;
        str(so,st);
        st:=st[k]+st;
        tim:=ord(st[n mod k+1])-48;
end;
begin
        assign(f1,'bai3.inp'); assign(f2,'bai3.out');
        reset(f1); rewrite(f2);  m:=1;
        for i:=1 to 15 do
                begin
                        cs[i]:=9*i*m;
                        m:=m*10;
                end;
        while not eof(f1) do
                begin
                        readln(f1,n);
                        writeln(f2,tim(n));
                end;

        close(f1); close(f2);
end.


