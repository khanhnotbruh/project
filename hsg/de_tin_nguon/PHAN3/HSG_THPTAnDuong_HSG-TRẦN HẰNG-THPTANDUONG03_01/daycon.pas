VAR f1,f2: text;
    S,T: qword;
    n,i,j,min,d: longint;
    A: array[1..20000] of longint;
BEGIN
   assign(f1,'daycon.inp');reset(f1);
   assign(f2,'daycon.out');rewrite(f2);
   readln(f1,N,S);
   for i:= 1 to n do read(f1,A[i]);
   d:=0; min:=-1 ;
   for i:= 1 to n do
   begin
      d:= 0;
      T:= A[i];
      if T>=S then
      begin
         d:=1;
         if min=-1 then min:= d
         else
         if min>=d then min:= d;
      end
      else
      for j:= i+1 to n do
      begin
         T:= T + A[j];
         if T >= S then
         begin
            d:= j-i+1;
            if min=-1 then min:= d
            else
            if min>=d then min:= d;
            break;
         end;
      end;
   end;
   if min=-1 then min:=0;
   writeln(f2,min);
   close(f1);
   close(f2);
END.