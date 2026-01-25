                const max=10000;
                var a:array[1..max] of longint;
                    d:array[0..max] of integer;
                    n,m:integer;
                    f:text;
                procedure nhap;
                        var i:integer;
                        begin
                        assign(f,'bai3.inp');
                        reset(f);
                        readln(f,n);
                        for i:=1 to n do
                        readln(f,a[i]);
                        close(f);
                        fillchar(d,sizeof(d),0);
                        end;
                function chon(s:integer):boolean;
                        var x:longint;
                        begin
                        s:=2*s;
                        x:=trunc(sqrt(s));
                        chon:=sqr(x)+x=s;
                        end;
                procedure tinh;
                        var i:integer;
                        begin
                        if chon(a[1]) then a[1]:=1
                        else d[1]:=0;
                        m:=d[1];
                        for i:=2 to n do
                        if chon(a[i]) then
                                begin
                                if a[i]>=a[i-1] then
                                d[i]:=d[i-1]+1
                                else
                                d[i]:=1;
                                if d[i]>m then m:=d[i]
                                end
                                else
                                d[i]:=0;
                                end;
                        procedure xuat;
                                begin
                                assign(f,'bai3.out');
                                rewrite(f,m);
                                write(f,m);
                                close(f);
                                end;
                        begin
                                clrscr;
                                nhap;
                                tinh;
                                xuat;
                                readln;
                        end.