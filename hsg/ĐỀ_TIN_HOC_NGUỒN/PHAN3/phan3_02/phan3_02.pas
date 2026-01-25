CONST
  tfi = 'BAI3.INP';
  tfo = 'BAI3.OUT';
VAR
  a            :   array[0..100001] of longint;
  n,l,i,res    :   longint;
BEGIN
  assign(input, tfi); reset(input);
  assign(output, tfo); rewrite(output);
  read(n);
  for i := 1 to n do read(a[i]);
  res := 1;
  l := 1;
  a[n+1] := a[n] + 1;
  for i := 2 to n+1 do
    begin
       if a[i] = a[i-1] then inc(l)
       else
        begin
            if res < l then res := l;
            l := 1;
        end;
    end;
  write(res);
  close(input);close(output);
END.
