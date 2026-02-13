CONST
        tfi     =       'BAI4.INP';
        tfo     =       'BAI4.OUT';
VAR
        n,i,j,t,res      :       longint;
        sum              :       array[0..5000] of longint;
BEGIN
   assign(input,tfi); reset(input);
   assign(output,tfo); rewrite(output);
   read(n);
   sum[0] := 0;
   for i := 1 to n do
        begin
                read(t);
                sum[i] := sum[i-1] + t;
        end;
   res := 0;
   for i := 1 to n do
     for j := i to n do
       begin
         if sum[j] - sum[i-1] > 0 then
                if res < j-i+1 then res := j-i+1;
       end;
   if res = 0 then write(-1) else write(res);
   close(input); close(output);
END.
