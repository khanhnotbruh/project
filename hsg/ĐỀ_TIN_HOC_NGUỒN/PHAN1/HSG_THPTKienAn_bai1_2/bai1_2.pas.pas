Const fi='SAPXEP.inp';
      fo='SAPXEP.out';
      maxN=200;
Type  Rec= record
         St:string;
         sl:Byte;
       end;
       ArrRec = Array[0..MaxN] of Rec;
Var A:ArrRec;
    N:Longint;
    ch:Char;
Procedure Swap(Var Rec1,Rec2:Rec);
    Var RecTg:Rec;
    Begin
       RecTg:=Rec1;
       Rec1:=Rec2;
       Rec2:=RecTg;
    End;
Procedure Read_Data;
  Var f:Text; i,j,d:Longint;
  Begin
       Assign(f,fi);   Reset(f);
       Readln(f,N);
       for i:=1 to N do
         Begin
            Readln(f,A[i].St);
            d:=0;
            For j:=1 to Length(A[i].St) do
                if ('0' <= A[i].St[j]) and (A[i].St[j]<='9') then
                   d:=d+1;
            A[i].Sl:=d;
         end;
        Close(f);
  End;
Procedure Sort;
   Var i,j:Longint;
     Begin
       For i:= N Downto 2 do
         For j:= 1 to i-1 do
           if A[j].Sl > A[j+1].Sl then Swap(A[j],A[j+1]);
     end;
Procedure Write_Data;
  Var f:text;
        i:Longint;
  Begin
       Assign(f,fo);  Rewrite(f);
       For i:=1 to N do
         Writeln(f,A[i].St);
       Close(f);
  End;
BEGIN
 Read_Data;
 Sort;
 Write_Data;
End.
