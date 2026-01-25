Program breaking;
var
   f1,f2:text;
   a:array[1..1000] of longint;
   i,n,d1,d2:word;
   max,min:longint;
Begin
     assign(f1,'breaking.inp');
     reset(f1);
     assign(f2,'breaking.out');
     rewrite(f2);
     readln(f1,n);
     for i:=1 to n do read(f1,a[i]);
     max:=a[1]; d1:=0;
     min:=a[1]; d2:=0;
     for i:=2 to n do
     begin
          if a[i]>max then Begin max:=a[i]; inc(d1);end
          else
          if a[i]<min then Begin min:=a[i]; inc(d2); end;
     end;
     write(f2,d1,' ',d2);
     close(f1);
     close(f2);
end.