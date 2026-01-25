uses math;
var q,d,z,n,i,s,m,k,j:longint;
      f, g:text;
     a, b:array[0..1000000]of qword;
begin
 assign(f,'nmax.inp');reset(f);
 assign(g,'nmax.out');rewrite(g);
   readln(f,n,m);
  s:=0;
 d:=0;
     for i:=1 to n do
      read(f,a[i]);
     q:=0;
     for i:=1 to n do
       begin
         if a[i]>=m then
           begin
             q:=i;
             b[i]:=b[i-1]+q;
           end
         else
            b[i]:=b[i-1]+q;
       end;
     writeln(g,b[n]);
 close(f);
 close(g);
End.
