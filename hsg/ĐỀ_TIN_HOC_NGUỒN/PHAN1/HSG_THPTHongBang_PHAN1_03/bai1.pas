CONST
     tfi        =       'bai1.inp';
     tfo        =       'bai1.out';
VAR
   n,i,res      :       longint;
   x,t          :       longint;
   u            :       array[1..6000] of longint;
{-----------------}
Function ngto(x : longint): boolean;
 Var
    i   :       longint;
 Begin
      if x < 2 then exit(false);
      for i := 2 to trunc(sqrt(x)) do
          if x mod i = 0 then exit(false);
      exit(true);
 End;
{-----------------}
BEGIN
     assign(input, tfi); reset(input);
     assign(output, tfo); rewrite(output);
     read(n);
     res := 0;
     for t := 2 to n div 2 do
           if ngto(t) and ngto(n-t) and (t <> n-t) then
             begin
              inc(res);
              u[res] := t;
             end;
     writeln(res);
     for t := 1 to res do
         begin
              writeln(u[t],' ',n-u[t]);
         end;
     close(input); close(output);
END.
