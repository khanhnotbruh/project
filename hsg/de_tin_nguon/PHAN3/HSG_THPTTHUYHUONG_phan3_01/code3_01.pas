Var t: Text;
    S: String;
Function Mahoaxau(S: string):String;
 Var S1:String;
     S2:String[1];
     i,j,d:byte;
 Begin
     S1:=''; S2:='';
     i:=1;
     While (i<= length(S)) do
      Begin
       d:=1;
       If S[i]='0' then S1:=S1+'b'
       else  S1:=S1+'a';
       j:=i+1;
        While (j<= length(S)) And (S[j]=S[i]) do
         begin
          inc(j);
          inc(d);
         end;
       str(d,S2);
       S1:=S1+S2;
       S2:='';
       i:=i+d;
      end;
      Mahoaxau:=S1;
 End;
    BEGIN
     Assign(t,'Bai3.INP');
     Reset(t);
     Readln(t,S);
     close(t);
     Assign(t,'Bai3.OUT');
     Rewrite(t);
     writeln(t,Mahoaxau(s));
     close(t);
END.
