Program Bai2;
Uses crt;
Var f1,f2:text;
    S:string;
    i,n:integer;
(***********************************)
Procedure chuyendoi;
Var A:array['A'..'Z'] of char;
       B:array['a'..'z'] of char;
      cs,m,k:char;
Begin
  m:='A';
 For cs:='Z' downto 'A' do
  Begin
   A[cs]:=m;
   Inc(m);
  End;
 For i:=1 to length(S) do
  For cs:='A' to 'Z' do
   If S[i]=cs then
    Begin
     S[i]:=A[cs];
     Break;
    End;
  k:='a';
 For cs:='z' downto 'a' do
  Begin
   A[cs]:=k;
   Inc(k);
  End;
 For i:=1 to length(S) do
  For cs:='a' to 'z' do
   If S[i]=cs then
    Begin
     S[i]:=A[cs];
     Break;
    End;
 Write(f2,S);
End;
(**************************************)
Begin
Assign(f1,'D:\mahoa.INP');Reset(f1);
Assign(f2,'D:\mahoa.OUT');Rewrite(f2);
 Read(f1,S);
 Chuyendoi;
 
 Close(f2);
End.
