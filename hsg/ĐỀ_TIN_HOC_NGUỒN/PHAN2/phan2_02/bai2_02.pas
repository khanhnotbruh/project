CONST
  tfi = 'BAI2.INP';
  tfo = 'BAI2.OUT';
VAR
  n,i : longint;
Function getbit(x,i : longint): longint;
  begin
      exit( (x shr i) and 1);
  end;
Procedure setbit(var x : longint; i, value : longint);
  begin
     if value = 1 then x := (1 shl i) or x
     else x := (not(1 shl i) and x);
  end;
BEGIN
  assign(input, tfi); reset(input);
  assign(output, tfo); rewrite(output);
  read(n);
  for i := 0 to trunc(ln(n)/ln(2)) do setbit(n,i,1-(getbit(n,i)));
  writeln(n);
  close(input);close(output);
END.
