const
     tfi = 'mua_hang.inp';
     tfo = 'mua_hang.out';
var
   fi,fo                  : text;
   N,i,sum                : longint;
   t,tg                   : array [1..10000] of longint;
BEGIN
     assign(fi,tfi);   reset(fi);
     assign(fo,tfo);   rewrite(fo);
          readln(fi,N);;
          for i :=1 to n do readln(fi,t[i]);
          sum := 0;  tg[1] := 0;
              for i:= 2 to n do
                  begin
                       tg[i]:= t[i-1] +tg[i-1];
                       sum := sum + t[i];
                  end;
          for i:=1 to n do writeln(fo,tg[i]);
          write(fo,sum+ t[1]);
     close(fo);
     close(fi);
end.


