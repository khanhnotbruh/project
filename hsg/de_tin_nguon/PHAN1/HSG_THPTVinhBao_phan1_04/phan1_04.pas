VAR S,S1:STRING;
  FI,FO:TEXT ;
  I,DEM:INTEGER;
    BEGIN
    ASSIGN(FI,'BAI1.INP');RESET(FI);
    ASSIGN(FO,'BAI1.OUT');REWRITE(FO);
    READ(FI,S);
    I:=1;
    while (i<=length(s)) do
     begin
     dem:=1;
     while ((s[i]=s[i+1]) and (i<length(s))) do
      begin
       dem:=dem+1;
       delete(s,i,1);
      end;
    if dem>1 then
      begin
       str(dem,s1);
       insert(s1,s,i+1);
       i:=i+2;
     end
     else i:=i+1;
     end;
     write(fo,s);
     close(fi);
     close(fo);
     end.
