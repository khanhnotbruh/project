VAR f1,f2: text;
    i,d,n: longint;
    A: array[1..300] of longint;
FUNCTION sieuchan(k: longint): boolean;
   var t,h: longint;
    begin
        t:=0;h:= -1;
        if k<=9 then exit(false);
        while k <> 0 do
        begin
           t:= k mod 10;
           if h=-1 then h:= t;
           if (t mod 2 <> 0) or (t<>h) then exit(false);
           k:= k div 10;
        end;
        exit(true);
    end;
BEGIN
   assign(f1,'sieuchan.inp');reset(f1);
   assign(f2,'sieuchan.out');rewrite(f2);
   readln(f1,N);
   d:= 0;
   for i:= 1 to n do
   begin
      readln(f1,A[i]);
      if sieuchan(A[i]) then inc(d);
   end;
   writeln(f2,d);
   close(f1);
   close(f2);
END.
