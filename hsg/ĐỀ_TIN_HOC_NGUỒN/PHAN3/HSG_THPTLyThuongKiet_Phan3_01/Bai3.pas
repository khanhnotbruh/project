Program Phan_thuong;
Const fi='PT.INP';
      fo='PT.OUT';
Type mmc=Array[0..101] of Longint;
Var N:Longint;
    A:mmc;
Function UCLN(x,y:Longint):Longint;
 Var sodu:Word;
 Begin
    sodu:=x mod y;
    While sodu<>0 do
      Begin
        x:=y;
        y:=sodu;
        sodu:=x mod y;
      End;
   UCLN:=y;
End;
Procedure Read_Data;1
 Var f:text;
     i:Longint;
 Begin
   Assign(f,fi);
   Reset(f);
   Readln(f,N);
   For i:=1 to N do
      Read(f,A[i]);
   Close(f);
 End;
Function USC:Longint;
Var f:text;
    i,mUSC:longint;
Begin
   mUSC:=UCLN(A[1],A[2]);
   for i:= 3 to N do
      mUSC:=UCLN(mUSC,A[i]);
   USC:=mUSC;
End;
Procedure Write_Data;
Var f:Text;
Begin
   Assign(f,fo);
   Rewrite(f);
   Write(f,USC);
   Close(f);
End;
BEGIN
  Read_Data;
  Write_Data;
End.
