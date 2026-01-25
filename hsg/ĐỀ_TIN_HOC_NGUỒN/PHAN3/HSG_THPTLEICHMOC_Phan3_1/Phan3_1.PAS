Const  fi=’Bai3.INP’;
            Fo=’Bai3.OUT’ ;
Var f1,f2 :text ;
       S:Ansistring ;
      N,i,j,d:longint;
      a,b:array[0..1000] of longint;
BEGIN
     Assign(f1,fi);resset(f1);
     Assign(f2,f0);resset(f2);
     Read(f1,s);
      N:=length(s);
     A[0]:=0;
      For i:=1 To N Do
           If S[i] in [‘A’..’Z’] Then  A[i]:=A[i-1] + 1
           Else  A[i]:=A[i-1];
       B[0]:=0;
      For i:=1 To N Do
           If S[i] in [‘0’..’9’] Then  B[i]:=B[i-1] + 1
           Else  B[i]:=B[i-1];
      d:=0;
      For i:=1 to N Do
           For j:=1 To N Do
               If A[j] - A[i-1] >B[j] - B[i-1] Then
                   Inc(d);
     Write(f2,d);
     Close(f1);Close(f2);
END.
