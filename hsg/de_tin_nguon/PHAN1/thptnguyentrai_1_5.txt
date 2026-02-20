Var f1, f2: text;

A: array\[1..200\]of string;

i,j,n: Longint;

tg: string;

Begin

Assign(f1,\'Bai1.inp\'); Reset(f1);

Assign(f2,\'Bai1.out\'); Rewrite(f2);

Readln(f1,n);

For i:=1 to n do

Readln(f1,A\[i\]);

For i:=1 to n-1 do

For j:=i+1 to n do

If length(A\[i\])\>length(A\[j\]) then

Begin

tg:=A\[i\];

A\[i\]:=A\[j\];

A\[j\]:=tg;

End;

For i:=1 to n do

Writeln(f2,A\[i\]);

Close(f1);Close(f2);

End.
