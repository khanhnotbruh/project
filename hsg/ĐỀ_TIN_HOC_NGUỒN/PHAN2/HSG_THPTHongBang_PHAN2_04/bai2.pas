const
        Nmax    =       1000;
type
        arr1    =       array[1..Nmax] of longint;
var
        a                 :       arr1;
        N,i,res,max,min,s :       longint;
begin
   assign(input,'bai2.inp'); reset(input);
   assign(output,'bai2.out'); rewrite(output);
   max := -1001;
   min := 1001;
   read(N);
   for i := 1 to N do
     begin
        read(a[i]);
        if max < a[i] then max := a[i];
        if min > a[i] then min := a[i];
     end;
   s := 0;
   for i := 1 to n do
     if s < (max - a[i])*(a[i]-min) then
       begin
                s := (max - a[i])*(a[i]-min);
                res := a[i];
       end;
   writeln(max);
   writeln(min);
   writeln(res);
   close(input);
   close(output);
end.
