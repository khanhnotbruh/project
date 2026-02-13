Const  fi=’Bai2.INP’;
            Fo=’Bai2.OUT’ ;
Var f1,f2 :text ;
       S,i,N :Longint ;
Function Hoanhao(N :longint) :boolean ;
Var S,i:longint;
Begin
    S:=0;
    For i:=1 to trunc(sqrt(n)) Do
        If n mod i =0 then
             S:=s+i+ n div i ;
    If i=sqrt(n) then
          S:=s-I;
    S:=s-n;
    Hoanhao:=s=n;
End;
BEGIN
     Assign(f1,fi);resset(f1);
     Assign(f2,f0);resset(f2);
     Read(f1,N);
     S:=0; 
     For i:=2 to n Do
           If  hoanhao(i) then s:=s+i;
     Write(f2,s);
     Close(f1);Close(f2);
END.
