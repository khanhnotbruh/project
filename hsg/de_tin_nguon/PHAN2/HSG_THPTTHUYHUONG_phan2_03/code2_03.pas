Type xau= ansistring;
Var t: text;
    S: xau;
    max,i,j: word;
BEGIN
     Assign(t,'Bai2.INP');
     Reset(t);
     Read(t,S);
     close(t);
     Assign(t,'Bai2.OUT');
     Rewrite(t);
     max:=0;
     i:=1;
     While (i<= length(S)) do
      If S[i]<>'a' then inc(i)
       else
        Begin
         j:=i+1;
         While (j<= length(S)) And (S[j]='a') do inc(j);
         If max < j-i then  max:= j-i;
         i:=i+max+1;
        End;
       writeln(t,max);
      close(t);
END.
