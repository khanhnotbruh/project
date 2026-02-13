program bai4;
var f:text;
    a:array[1..32000]of integer;
    n,x,i:integer;
begin
     assign(f,'DE1_04.inp');
     reset(f);
     read(f,n);
     for i:=1 to n do
       begin
       read(f,x);
       a[x]:=a[x]+1;
       end;
     close(f);
     assign(f,'DE1_04.out');
     rewrite(f);
     for i:=1 to 32000 do
     if a[i]>1 then writeln(f,i,' ',a[i]);
     close(f);
end.
