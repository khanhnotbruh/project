Program Tim_so;
Const fi='TIMSO.INP';
      fo='TIMSO.OUT' ;
Var  P,Q:longint;
     Time:Longint;
     Times:Longint absolute 0:$46C;
Function NT(K:longint):Boolean;
Var Can,i:Longint;
Begin
  If (K=2) or (K=3) then Begin NT:=True;Exit; End;
  If (K<2) or (K mod 2 = 0) or (K mod 3 = 0) then
     Begin NT:=False; Exit; End;
  NT:=True;
  i:=5;
  Can:=Trunc(sqrt(K));
  While i<=Can do
    Begin
      if (K mod i = 0) or (K mod (i+2) =0) then
         Begin NT:=False; Exit; End
      ELse inc(i,6);
    End;
End;
Function lnso(N:longint):longint;
Var S:longint;
Begin
  S:=0;
  While N<>0 do
    Begin
       S:=S*10+ (N mod 10);
       N:=N div 10;
    End;
  lnso:=S;
End;
Procedure Read_Data;
Var F:text;
Begin
   Assign(f,fi);
   Reset(f);
   Read(f,P,Q);
   Close(f);
End;
Procedure Write_Data;
Var f:text;
    j:longint;
Begin
   Assign(f,fo);
   Rewrite(f);
   for j:=P to Q do
       if NT(lnso(j)) then Writeln(f,j);
   Close(f);
End;
BEGIN
  Time:=Times;
  Read_Data;
  Write_Data;
  Writeln((Times-Time)/18.2:0:2);
  Readln;
END. 
