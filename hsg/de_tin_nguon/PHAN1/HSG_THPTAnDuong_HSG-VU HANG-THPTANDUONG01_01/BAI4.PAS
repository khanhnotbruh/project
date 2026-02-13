PROGRAM BAI4;
Var
    s:array[1..1000] of char;
    fo,fi:text;
    i,n,j,dem: integer;
    t:boolean;
BEGIN
     assign(fo,'bai1.inp');
     reset(fo);
     assign(fi,'bai1.out');
     rewrite(fi);
     i:=0;
     while not eof(fo) do
     Begin
          inc(i);
          read(fo,s[i]);
     end;
     n:=i;
     dem:=0;
     For i:=1 to n do
     Begin
          t:=false;
          For j:=1 to i-1 do if (s[j]=s[i]) then t:=true;
          If not t then dem:= dem+1;
     End;
     Write(fi,dem);
     close(fo);
     close(fi);
END.
