const
     tfi = 'xoa_phantu_trung.inp';
     tfo = 'xoa_phantu_trung.out';
var
   fi,fo                : text;
   n,i,j,k              : integer;
   a                    : array [1..500] of longint;
begin
     assign(fi,tfi); reset(fi);
     assign(fo,tfo); rewrite(fo);
         readln(fi,n);
         for i:=1 to n do read (fi,a[i]);
         for i:= 1 to n-1 do
             for j := i+1 to n do
                 if a[i] = a[j] then a[j] := 100001;
         for i := 1 to n do if a[i] <> 100001  then write(fo,a[i],' ');
     close(fo);
     close(fi);
end.

