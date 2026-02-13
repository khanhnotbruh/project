USES math;
CONST
        tfi     =       'BAI3.INP';
        tfo     =       'BAI3.OUT';
VAR
        n,i,j,tg,x,kq,m       :       longint;
        a,b,c,k               :       array[1..100000] of int64;
        kq1,kq2               :       int64;
procedure qsort(l,r: longint);
Var
  i,j,x,tg     :       longint;
Begin
    i := l;
    j := r;
    x := a[(l+r) div 2];
    repeat
       while  a[i] < x do inc(i);
       while  a[j] > x do dec(j);
       if i <= j then
         begin
                tg := a[i];
                a[i] := a[j];
                a[j] := tg;
                inc(i);
                dec(j);
         end;
    until i>j;
    if l<j then qsort(l,j);
    if i<r then qsort(i,r);
End;
BEGIN
        assign(input,tfi); reset(input);
        assign(output,tfo); rewrite(output);
        read(n);
        for i := 1 to n do read(a[i]);
        qsort(1,n);
        b[1] := a[1];
        k[1] := 1;
        m := 1;
        for i := 2 to n do
            begin
               if a[i] <> b[m] then
                  begin
                      inc(m);
                      b[m] := a[i];
                      k[m] := 1;
                  end
               else inc(k[m]);
            end;
        for i := 1 to m do c[i] := b[i]*k[i];
        kq1 := 0;
        kq2 := 10**18;
        for i := 1 to m do
          begin
                if kq1 < c[i] then kq1 := c[i];
                if kq2 > b[i] then kq2 := b[i];
          end;
        write(kq2,' ',kq1);
END.