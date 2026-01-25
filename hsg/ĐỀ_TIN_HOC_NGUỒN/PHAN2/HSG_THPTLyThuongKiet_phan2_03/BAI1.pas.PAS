Program bai2;
Uses Crt;
Var F:Text;
    A:  Array[1..100] of byte;
    M, X:Byte;
{ Doc tep}
Procedure Readfile;
Var I: Byte;
Begin
   I:=0;
   Assign(F, 'input,dat');
   Reset(F);
   Readln(F,M);
   While not(eof(f)) do
      Begin
         I:=I+1;
         Read(F, A[i]);
      End;
   Close(F);
End;
{Ma hoa}
Procedure Kiemtra;
Var i: Byte;
    Kt: Integer;
Begin
    X:=0;
    Kt:=A[2]-A[1];
    For i:=2 to M do
       If  Kt<> A[i]-A[i+1] then X:=1;
End;
{Ghi tep}
Procedure Writefile;
Var I: Byte;
Begin
 Assign(F,'output.txt');
 Rewrite(F);
 Writeln(F,M);
 For I:=1 to  M do
       Write(F, A[i]);
 Writeln;
 If X=0 then Write(f,'Day so la cap so cong')
 Else Write(f,' Day so khong la cap so cong');
 Close(f);
End;
{ Chuong trinh chinh}
Begin
     Readfile;
     kiemtra;
     Writefile;
End.


