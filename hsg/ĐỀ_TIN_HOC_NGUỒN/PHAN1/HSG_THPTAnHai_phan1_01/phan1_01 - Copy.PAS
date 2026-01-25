CONST tepinp='MAHOA.INP';
      tepout='MAHOA.OUT';
VAR fi,fo:text;
    k:byte;
    s:string;
Procedure MAHOA(a:string);
  var i:byte;
 begin
   for i:=1 to length(a) do
     if a[i]<>' 'then a[i]:=chr(ord(a[i])+K);
   writeln(fo,a);
 end;
BEGIN
  Assign(fi,tepinp);reset(fi);
  Assign(fo,tepout);rewrite(fo);
  Readln(fi,k);Writeln(fo);
  While not eof(fi) do
    Begin
      Readln(fi,s);
      MAHOA(s);
    End;
  Close(fi);Close(fo);
End.

