program bai4;
uses crt;
var
        tong,max, dau,cuoi,d,tg:int64;
        st:ansistring;
        i,n:longword;
        f1,f2:text;
begin
        assign(f1,'bai4.inp'); assign(f2,'bai4.out');
        reset(f1); rewrite(f2);
        tong:=0;
        readln(f1,n);
        dau:=1; cuoi:=1;d:=1;
        tong:=0; max:=-9000000000000000000;
        for i:=1 to n do
                begin
                        readln(f1,tg);
                        tong:=tong+tg;
                        if tong > max then
                                begin
                                        max:=tong;
                                        dau:=d;
                                        cuoi:=i;
                                end;
                        if tong<0 then
                                begin
                                        tong:=0;
                                        d:=i+1;
                                end;
                end;

        writeln(f2,dau);
        writeln(f2,cuoi);
        writeln(f2,max);
        close(f1); close(f2);
end.


