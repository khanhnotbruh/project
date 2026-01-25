program lt;
const
 max = 200;
var
 a: array[1..max, 1..max] of Boolean;
 dd: array[1..max] of Boolean;
 k, u, v,m, n,i: integer;
 d: Byte; f,g:text;
Begin
 FillChar(a, SizeOf(a), False);
 Assign(f, 'LT.INP'); Reset(f);
 Assign(g, 'LT.OUT');   rewrite(g);
 Readln(f, n, m);
 for v := 1 to n do a[v, v] := True;
 for i := 1 to m do
  begin
   Readln(f, u, v);
   a[u, v] := True;
   a[v, u] := True;
 end;
 for k := 1 to n do
  for u := 1 to n do
   for v := 1 to n do
    a[u, v] := a[u, v] or a[u, k] and a[k, v];
 d := 0;
 FillChar(dd, n, True);
 for u := 1 to n do
  if dd[u] then
   begin
    Inc(d);
     for v := 1 to n do
     if a[u, v] then
      begin
        dd[v] := False;
      end;
      end;
   Writeln(g,d);
   close(g);
end.
