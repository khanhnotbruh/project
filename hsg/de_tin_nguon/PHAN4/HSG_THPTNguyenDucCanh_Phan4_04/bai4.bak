var
   n: longint;
   a, S, p, q: array[0..1000000] of longint;
   dapso: longint;
var i, j, k: longint;
BEGIN
   assign(input,’BAI4.INP’); reset(input);
   assign(output,’BAI4.OUT’); rewrite(output);
   read(n);
   for i:=1 to n do read(a[i]);
   S[0]:=0;
   for i:=1 to n do S[i]:=S[i-1]+a[i];
   dapso:=0;
   if s[n] mod 4=0 then
   begin
     p[0]:=0;
     for i:=2 to n do 
     begin
        p[i]=p[i-1];
        if s[i] = s[n] div 4 then inc(p[i]);
     end;
     q[n]:=0;
     for k:=n-1 downto 1 do
     begin
        q[k]:=q[k+1];
        if s[k]=3*(s[n] div 4) then inc(q[k]);
     end;
     for j:=2 to n-2 do if S[j]=2*(S[n] div 4) then
     dapso:=dapso+p[j-1]*q[j+1];
   end;
   writeln(dapso);
END.
