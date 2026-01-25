program bai1;
Uses crt;
Var
   s1,s2:String;
   fin,fout:text;
{---------------------------------}
Function chuahoa(s1:String):String;
Var
   s2:String;
   i,n:integer;
Begin
 i:=1; n:=length(s1);
 s2:='';
 while (i<=n)and(s1[i]=' ') do i:=i+1;
 if (i<=n) and (s1[i]<>' ') then
 Begin
  s2:=s2+upcase(s1[i]);i:=i+1;
 End;
 while i<=n do
 Begin
  while (i<=n) and (s1[i]<>' ') do
  Begin
   if (s1[i]>='A') and (s1[i]<='Z') then
      s2:=s2+chr(ord(s1[i])+32)
   else
      s2:=s2+s1[i];
   i:=i+1;
  End;
  while (i<=n) and (s1[i]=' ') do i:=i+1;
   if (i<=n) and (s1[i]<>' ') then s2:=s2+' ';
 End;
 chuahoa:=s2;
End;
{--------------------------------}
BEGIN
     clrscr;
     { Mo tep du lieu BAI1.INP }
     assign(fin,'BAI1.INP');
     reset(fin);

     { Mo tep du lieu BAI1.OUT }
     assign(fout,'BAI1.OUT');
     rewrite(fout);

     while not eof(fin) do
     Begin
      readln(fin,s1);
      s2:=chuahoa(s1);
      writeln(fout,s2);
     End;
     close(fin);
     close(fout);
     writeln('OK');
     readln;
END.