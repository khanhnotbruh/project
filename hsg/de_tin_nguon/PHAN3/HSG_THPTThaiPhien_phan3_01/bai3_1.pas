const   fi='bai2.inp';
        fo='bai2.out';
var     d,c:array[1..100000] of longint;
        n,i,a,b,min,dx,dd,l:longint;
procedure doc;
var     i:longint;
begin
        assign(input,fi); reset(input);
        assign(output,fo); rewrite(output);
        readln(n,a,b);
        for i:=1 to n do readln(d[i],c[i]);
end;

procedure swap(var x,y:longint);
var     tg:longint;
begin
        tg:=x;
        x:=y;
        y:=tg;
end;

procedure qsort(l,r:longint);
var     i,j,key:longint;
begin
        i:=l;
        j:=r;
        key:=d[(l+r) div 2];
        repeat
           while (d[i]<key) do inc(i);
           while (d[j]>key) do dec(j);
           if (i<=j) then
              begin
                 swap(d[i],d[j]);
                 swap(c[i],c[j]);
                 inc(i);
                 dec(j);
              end;
        until i>j;
        if (i<r) then qsort(i,r);
        if (l<j) then qsort(l,j);
end;

BEGIN
        doc;
        qsort(1,n);
        min:=1000000001;
        dx:=0;
        dd:=0;
        l:=1;
        for i:=1 to n do
           begin
                if (c[i]=1) then inc(dx)
                else inc(dd);
                while ((dx>=a) and (dd>=b)) do
                   begin
                      if (d[i]-d[l]<min) then min:=d[i]-d[l];
                      if (c[l]=1) then dec(dx)
                         else dec(dd);
                      inc(l);
                   end;
           end;
        writeln(min);
        close(input); close(output);
END.
