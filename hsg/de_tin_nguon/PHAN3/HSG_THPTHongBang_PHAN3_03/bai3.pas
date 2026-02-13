const
        Nmax    =       100;
type
        arr1    =       array[1..Nmax] of longint;
var
        a,b           :       arr1;
        N,M,i,j,max   :       longint;
(*-------------------------------------*)
Function UCLN(a,b : longint) : longint;
  var
     r  :   longint;
  begin
     while b <> 0 do
       begin
          r := a mod b;
          a := b;
          b := r;
       end;
     UCLN := a;
  end;
(*-------------------------------------*)
begin
        assign(input,'bai3.inp'); reset(input);
        assign(output,'bai3.out'); rewrite(output);
        readln(N);
        for i := 1 to N do
           read(a[i]);
        readln(M);
        for j := 1 to M do
           read(b[j]);
        max := 0;
        for i := 1 to N do
          For j := 1 to M do
             if max < UCLN(a[i],b[j]) then max :=  UCLN(a[i],b[j]);
        write(max);
        close(input);
        close(output);
end.


