Program Day_con;
Const fi='DAYCON.INP';
      fo='DAYCON.OUT';
      MaxN=101;
Type  mmc=Array[0..MaxN] of Longint;
      mhc=Array[0..MaxN] of mmc;
Var A,B,C:mmc;
    L:mhc;
    N,M,K:Longint;
    Time:Longint;
    Times: Longint absolute 0:$46C;
Procedure Read_Data;
  Var f:Text; i:Longint;
  Begin
    Assign(f,fi);
    Reset(f);
    Readln(f,N);
    For i:=1 to N do
        Read(f,A[i]);
    Readln(f,M);
    For i:=1 to M do
        Read(f,B[i]);
    Fillchar(L,Sizeof(L),0);
    Close(f);
  End;
Procedure Solution;
  Var i,j:Longint;
  Begin
    For i:=1 to N do
      For j:=1 to M do
        Begin
          if A[i] = B[j] then
             L[i,j]:=L[i-1,j-1]+1
          Else
            Begin
               L[i,j]:=L[i,j-1];
               If L[i-1,j] > L[i,j-1] then
                   L[i,j]:=L[i-1,j];
            End;

        End;
  End;
Procedure Write_Data;
  Var f:Text;i,j,Top:Longint;LA,LB:mmc;
  Begin
    Assign(f,fo);
    Rewrite(f);
    Writeln(f,L[N,M]);
    Top:=0;
    i:=N;j:=M;
    While (i>0) and (j>0) do
      Begin
        if A[i] = B[j] then
          Begin
            inc(Top);
            LA[Top]:=i;
            LB[Top]:=j;
            dec(i);
            dec(j);
          End
        Else
          if L[i-1,j] > L[i,j-1] then
             dec(i)
          Else
             dec(j);
      End;
    For i:=Top Downto 1 do
      Write(f,A[LA[i]],' ');
    Writeln(f);
    For i:=Top Downto 1 do
      Write(f,LA[i],' ');
    Writeln(f);
    For i:=Top Downto 1 do
      Write(f,LB[i],' ');
    Close(f);
  End;
BEGIN
  Time:=Times;
  Read_Data;
  Solution;
  Write_Data;
  Writeln((Times-Time)/18.2:0:0);
  Readln;
END.