 TYPE mang = array[1..50000] of longword;
     xau= string[4];
VAR t: text;
    a: mang;
    i,N,d: longword;
Function NTO(N: longword): boolean;
 Var kt: boolean;
     i: longword;
 Begin
      If N<=1 then kt:= false
      else
       begin
        kt:= true;
        for i:=2 to trunc(Sqrt(N)) do
         If N mod i = 0 then
          begin
           kt:= false;
           break;
          end;
       end;
      NTO:=kt;
 End;
Function Daoso(N: longword): longword;
 Var S,S1: xau;
     i,M: longword;
     code: integer;
 Begin
      S:='';
      Str(N,S1);
      For i:=length(S1) downto 1 do S:=S+S1[i];
      While (length(S)<4) do S:=S+'0';
      Val(S,M,code);
      If code=0 then Daoso:=M;
 End;
BEGIN
     Assign(t,'Bai4.INP');
     Reset(t);
     Read(t,N);
     For i:=1 to N do read(t,a[i]);
     close(t);
     Assign(t,'Bai4.OUT');
     Rewrite(t);
     d:=0;
     For i:=1 to N do
      If NTO(Daoso(a[i])) then inc(d);
     Write(t,d);
     close(t);
END.
