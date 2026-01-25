program bai2;
uses crt;
var
        tong:qword;
        st:ansistring;
        i:longint;
        f1,f2:text;
begin
        assign(f1,'bai2.inp'); assign(f2,'bai2.out');
        reset(f1); rewrite(f2);
        tong:=0;
        readln(f1,st);
        for i:=1to length(st) do
                tong:=tong+ord(st[i])-48;
        writeln(f2,tong);
        close(f1); close(f2);
end.


