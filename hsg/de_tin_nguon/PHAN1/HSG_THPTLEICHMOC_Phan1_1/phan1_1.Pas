Const  fi=’Bai1.INP’;
            Fo=’Bai1.OUT’ ;
Var f1,f2 :text ;
       N,k,d :Longint ;
       X:real;
BEGIN
     Assign(f1,fi);resset(f1);
     Assign(f2,f0);resset(f2);
     Read(f1,N);
     K:=1; d:=1; x:=1;
     While k<n Do
         Begin
            Inc(k);
            X:=x*k;
             While  x>10 Do 
                  Begin
                      X:=x/10;
                       Inc(d);
                   End;
           End;
      If  d=n  Then  write(f2,k)  else write(f2,-1);
     Close(f1);Close(f2);
END.
