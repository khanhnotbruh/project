const
     tfi        =       'diemthi.inp';
     tfo        =       'diemthi.out';
var
 fi,fo  : text;
 n,k,d1,s  : longint;
 bq        : real;
 st     : string;
 a      : array[1..1000] of longint;
 procedure nhap;
           begin
              read(fi,n,k);
           end;
 procedure xuli;
           var i : longint;
           begin
           d1:=0;
              while not seekeof(fi) do
                 begin
                    readln(fi,st);
                    for i:=1 to k do
                      if st[i]='d' then
                      begin
                      d1:=d1+1;
                      inc(a[i]);
                      end;
                      bq:=d1/n;
                end;

           end;
 procedure xuli2;
           var
              i,m : longint;
           begin
           m:=0;
             for i:=1 to k do
               if a[i]>m then m:=a[i];
             for i:=1 to k do
               if a[i]=m then write(fo,i,' '); writeln(fo);
           m:=0;
             for i:=1 to k do
               if a[i]<m then m:=a[i];
             for i:=1 to k do
               if a[i]=m then write(fo,i,' ');
           end;
BEGIN
    assign(fo,tfo);assign(fi,tfi);
    rewrite(fo);reset(fi);
       nhap;
       xuli;   writeln(fo,bq:2:1);
       xuli2;
    close(fo); close(fi);
END.