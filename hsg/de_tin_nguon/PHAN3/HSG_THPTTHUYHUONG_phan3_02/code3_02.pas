TYPE xau=string[11];
VAR t: text;
    a: array[1..10000] of word;
    b: array[1..10000] of xau;
    i,n,j,d: word;
Function TPNP(N:word): xau;
 Var S,S1: xau;
 Begin
      S:='';
      While (n<>0) do
       begin
        Str(N mod 2,S1);
        N:= N div 2;
        S:=S1+S;
        S1:='';
       end;
      While (length(S)< 11) do S:='0'+S;
      TPNP:=S;
 End;
Function Ktra(S1,S2: xau): boolean;
 Var kt: boolean;
     i: byte;
 Begin
      i:=1; kt:=true;
      While (i<= length(S1)) do
       If S1[i] = S2[i] then inc(i)
       else
        for i:=i+1 to length(S1) do
         If S1[i]<>S2[i] then
          begin
           kt:=false;
           break;
          end;
      Ktra:=kt;
 End;
BEGIN
     Assign(t,'Bai3.INP');
     Reset(t);
     Read(t,n);
     For i:=1 to n do read(t,a[i]);
     close(t);
     Assign(t,'Bai3.OUT');
     Rewrite(t);
     d:=0;
     For i:= 1 to n do b[i]:=TPNP(a[i]);
     For i:=1 to n-1 do
      for j:=i+1 to n do
       If Ktra(b[i],b[j]) then inc(d);
     Write(t,d);
     close(t);
END.
