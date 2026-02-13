K? thu?t duy?t 2 di?m và d?m phân ph?i
Const  fi=’Bai4.INP’;
            Fo=’Bai4.OUT’ ;
Var f1,f2 :text ;
      N,i,j,d:longint;
      a:array[1..400000] of longint;
      b:array[1..100000000] of  longint;  
      k,n,i,j,sl:longint;  
BEGIN
     Assign(f1,fi);resset(f1);
     Assign(f2,f0);resset(f2);
     Read(f1,n,k);
     i:=0;
     While i<n Do
        Begin
           Inc(i); Read(f1,A[i]);
        End;
      i:=1; j:=1;
      sl:=0;
      inc(d[a[1]]);
    While  i<n-k+1 Do
         If d[a[j]]=k then
             Begin
                Sl:=sl + n - j+1;
                Dec(d[a[j]]);
                Inc(i);
              End
           Else if j<n Then
                         Begin
                              Inc(j); inc(d[a[j]]);
                          End
                      Else  break;
     Write(f2,sl);
     Close(f1);Close(f2);
END.
