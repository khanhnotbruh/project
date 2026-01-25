CONST
        tfi     =       'BAI3.INP';
        tfo     =       'BAI3.OUT';
VAR
       n,k,res,i,x    : longint;
         a            : array[1..5000] of longint;
Function nto(x : longint): boolean;
   Var
        i       : longint;
   Begin
       if x < 2 then exit(false);
       for i := 2 to trunc(sqrt(x)) do
          if x mod i = 0 then exit(false);
       exit(true);
   End;
BEGIN
   assign(input,tfi); reset(input);
   assign(output,tfo); rewrite(output);
   read(n,k);
      res := 0;
      for i := 1 to n do
     begin
          read(x);
            if nto(x) then
                if k > x then inc(res);
     end;
   write(res);
       close(input); close(output);
END.
