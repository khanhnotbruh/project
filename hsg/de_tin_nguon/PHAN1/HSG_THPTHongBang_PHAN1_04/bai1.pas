CONST
        tfi     =       'BAI1.INP';
        tfo     =       'BAI1.OUT';
VAR
        ch      :       char;
        sc,sl   :       longint;
BEGIN
        assign(input,tfi); reset(input);
        assign(output,tfo); rewrite(output);
        sc := 0;
        sl := 0;
        while not seekeof(input) do
                begin
                   read(ch);
                   if ch in ['1'..'9'] then
                        if (ord(ch)- ord('0')) mod 2 = 0 then inc(sc) else inc(sl);
                end;
        write(abs(sc-sl));
        close(input); close(output);
END.
