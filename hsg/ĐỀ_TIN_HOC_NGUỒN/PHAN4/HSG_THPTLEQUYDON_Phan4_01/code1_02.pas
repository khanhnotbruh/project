Program tn;
Uses CRT;
Var
   cc,cs,i: Byte;
   f,p: text;
   X: string;
Begin
CLRSCR;
       assign(f,'XAU.INP');
       Reset(f);
       Readln(f,s);
       cc:=0;
       cs:=0;
       while not eof(f) do
             for i:=1 to length(s) do
                 Begin
                      if (X[i] in ['0'..'9']) then cs:=cs+1;
                      If (X[i] in ['a'..'z'] + ['A'..'Z']) then cc:=cc+1;
                 End;
       Assign(p,'XAU.OUT');
       Rewrite(p);
       Writeln(p,cc);
       Write(p,cs);
Close(f);
Close(p);
Readln;
End.
