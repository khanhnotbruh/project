const
        tfi = 'sum_day_con.inp';
        tfo = 'sum_day_con.out';
var
        fi,fo           : text;
        n,k,i,j,dem,t   : longint;
        sum             : array [0..100000] of longint;
        a               : array [1..100000] of longint;
begin
        assign(fi,tfi); reset(fi);
        assign(fo,tfo); rewrite(fo);
                readln (fi,n,k);
                sum[0] := 0;
                for i:= 1 to n do
                        begin
                                read (fi,a[i]);
                                sum[i] := sum[i-1] + a[i];
                        end;
                for i:= 1 to n do
                   for j:= 1 to n do
                        if ((j >(i-1)) and (sum[j]-sum[i-1] = k)) then
                           begin
                                inc(dem);
                                for t := i to j do write (fo,a[t],' ');
                                writeln (fo);
                           end;
        write(fo,dem);
        close(fi); close(fo);
end.


