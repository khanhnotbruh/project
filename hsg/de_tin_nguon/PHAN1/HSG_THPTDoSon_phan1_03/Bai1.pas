Program d2b1;
const fi='Bai1.inp';
      fo='Bai1.out';
Var S:Ansistring;
    i,N,d:longint;
    f1,f2:text;
procedure mofile;
begin
  assign(f1,fi);
  reset(f1);
  readln(f1,S);
  assign(f2,fo);
  Rewrite(f2);
end;
Procedure dongfile;
begin
   close(f1);
   close(f2);
end;
Procedure xuli;
Begin
   n:=length(s);
   d:=0;
   for i:=1 to N do  if s[i] in ['a'..'z'] then d:=d+1;
   if d=0 then
   Begin
     Write(f2,'#');
     exit;
   End;
    if(s[n] in ['a'..'z']) then  S:=S+'.';
    inc(n);
    for i:= 1 to N-1 do If (s[i] in ['.','!','?']) then s[i+1]:=upcase(s[i+1]);
    while (s[1] in ['.','!','?']) do
    Begin
       delete(s,1,1);
       dec(n);
    end;
    if s<>'' then
    Begin
     s[1]:=upcase(s[1]);
     for I:=1 to length(s)-1 do
       if ((s[i] in ['.','!','?'])and
        (not (s[i+1] in ['.','!','?']))) or (upcase(s[i]) in ['A'..'Z']) then Write(f2,S[i]);
      Write(f2,s[n]);
    End else write(f2,'#');
End;
BEGIN
  mofile;
  Xuli;
  dongfile;
END.

