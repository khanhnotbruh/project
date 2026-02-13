{$Mode ObjFpc}

Uses math;

Const fi = 'Password.inp';
      fo = 'Password.out';
Var s, t: ansistring;
    f: array[0..2000, 0..2000] of integer;

Procedure enter;
Var i: integer;

BEGIN
        Assign(input, fi); reset(input);
        Assign(output, fo); rewrite(output);
        Read(s);
        For i := 1 to length(s) do
                t := t + s[length(s) - i + 1];
END;

Procedure solve;
Var i, j: integer;
    res: ansistring;

BEGIN
        For i := 1 to length(s) do
         For j := 1 to length(t) do
          If (s[i] = t[j]) then
                F[i, j] := F[i - 1, j - 1] + 1
          Else F[i, j] := max(F[i - 1, j], F[i, j - 1]);
        Writeln(F[length(s), length(t)]);
END;

BEGIN
       Enter;
       Solve;
END.
