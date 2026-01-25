CONST
        tfi     =       'BAI2.INP';
        tfo     =       'BAI2.OUT';
VAR
        res, i, n :longint;
BEGIN
        assign(input,tfi); reset(input);
        assign(output,tfo); rewrite(output);
        res := 0;
        read(n);
        while n <> 0 do
begin
         res := res + n mod 10;
         n := n div 10;
end;
        write(res);
        close(input); close(output);
END.
