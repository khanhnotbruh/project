Program Bai2_BS;
const  fi='Bai2.inp';
       fo='Bai2.out';
var
    A,m,n,i,j:longint;
Function KtThuan(x:Longint):boolean;
var tmp:longint;
Begin
     Tmp:=x mod 10;
     while x<>0 do
     begin
        if x mod 10 <>  tmp then exit(false);
        tmp:=tmp mod 10;
        x:=x div 10;
     end;
End;
Function KtToanVi(x:Longint):boolean;
var tmp:longint;
    dem:array[0..9] of byte;
Begin
     fillchar(dem,sizeof(dem),0);
     while x<>0 do
     Begin
        tmp:=x mod 10;
        inc(dem[tmp]);
        if dem[tmp]>1 then exit(false);
        x:= x div 10;
     End;
     exit(true);
End;
Procedure mo;
Begin
    assign(input,fi);
    reset(input);
    assign(output,fo);
    Rewrite(output);
    Readln(M,N);
End;
Procedure xl;
Var tk,tv:LongInt;
Begin
   tk:=0; tv:=0;
   for i:=1 to M do
   Begin
      read(A);
      if ktThuan(A) then inc(tk);       //b2bs.out
   End;
   readln(input);
   for i:=1 to N do
   Begin
      read(A);
      if ktToanVi(A) then inc(tv);
   End;
   Write(tk,' ',tv);
End;
BEGIN
  mo;
  xl;
END.
