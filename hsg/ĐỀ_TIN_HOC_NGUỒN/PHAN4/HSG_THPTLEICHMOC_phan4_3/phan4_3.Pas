const
        fi='lim12.inp';
        fo='lim12.out';
var
        f1,f2:text;
        a:array[0..100000] of longint;
        i,j,n,k,max,s:longint;
begin
        assign(f1,fi);
        assign(f2,fo);
        reset(f1);
        rewrite(f2);
        max:=0;
        read(f1,n,k);
        for i:=1 to n do
        read(f1,a[i]);
        for i:=1 to n do
        begin
                s:=0;
                for j:=i to n  do
                begin
                        s:=s+a[j];
                        if s mod k=0 then
                        if j-i+1>max then
                        max:=j-i+1;
                end;
        end;
        write(f2,max);
        close(f1);
        close(f2);
end.