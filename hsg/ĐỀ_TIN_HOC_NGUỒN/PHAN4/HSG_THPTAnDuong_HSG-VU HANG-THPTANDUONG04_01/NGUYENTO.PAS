program nguyento;
var
   a,d:array[1..1000] of longint;
   i,n,t,p,q,m,u,v:longint;
   f1,f2:text;

function nt(x:longint):boolean;
var
   i:longint;
Begin
     nt:=true;
     if x<2 then nt:=false;
     for i:=2 to trunc(sqrt(x)) do
         if x mod i=0 then nt:=false;
end;
Begin
     assign(f1,'nguyeto.inp');reset(f1);
     assign(f2,'nguyento.out'); rewrite(f2);
     readln(f1, n,t);
     readln(f1,p,q,m);
     for i:=1 to n do
     Begin
         a[i]:=(p*i)mod m +q;
         if nt(a[i]) then d[i]:=d[i-1]+1 else d[i]:=d[i-1];
     end;
     for i:=1 to t do
     Begin
          readln(u,v);
          writeln(f2,d[v]-d[u-1]);
     end;
     close(f1);
     close(f2);
end.