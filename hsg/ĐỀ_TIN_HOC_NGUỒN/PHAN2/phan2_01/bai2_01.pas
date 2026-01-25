CONST
        tfi     =       'BAI2.INP';
        tfo     =       'BAI2.OUT';
VAR
        n, min, max, i     : longint;
        a               : array[1..5000] of longint;
Function nto(x : longint): boolean;
   Var
        i       :longint;
   Begin
       if x < 2 then exit(false);
       for i := 2 to x div 2 do
          if x mod i = 0 then exit(false);
       exit(true);
   End;
BEGIN
   assign(input,tfi); reset(input);
   assign(output,tfo); rewrite(output);
   read(n);
   for i := 1 to n do read(a[i]);
   min := 1000000000;
   max := 0;
   for i := 1 to n do
     begin
        if nto(a[i]) then
                if min > a[i] then min := a[i];
                    if sqr(trunc(sqrt(a[i])))=a[i] then
                if max < a[i] then max := a[i];
     end;
   write(min + max);
   close(input); close(output);
END.
