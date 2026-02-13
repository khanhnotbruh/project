Const fi=’Bai3.INP’;
           fo=’bai3.OUT’;
Var  i,j,n,max:longint;
       A:array[0..10000001] of Longint;
        f1,f2:text; 
BEGIN
   Assign(f1,fi);reset(f1);
   Assign(f2,fo);rewrite(f2);
Read(f1,N);
Max:=0;
For i:=1 To N Do
     Begin
        Read(f1,j);
        Inc(a[j]);
        If a[j] >max then max:=a[j];
     End;
Write(f1,max);
Close(f1);close(f2);
END.