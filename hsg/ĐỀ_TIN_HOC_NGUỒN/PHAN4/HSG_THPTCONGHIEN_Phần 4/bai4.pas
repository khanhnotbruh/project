Program bai4;
Var  n :Byte; fi,fo:text;
        A :Array[1..101] of String[100];

  procedure docdl;
  begin
   Assign(fi,'bai4.inp'); Reset(fi);
   Assign(fo,'bai4.out'); Rewrite(fo);
    n:=0;
    while not EoF(fi) do
      begin
        Inc(n); Readln(fi,A[n]);
      end;
  end;

  procedure doicho(i,j :Byte);
  var
    tg:String[100];
  begin
    tg:=A[i]; A[i]:=A[j]; A[j]:=tg;
  end;

 procedure sapxep;
 var
   i,j :Byte;
  begin
    for i:=1 to n-1 do
      for j:=i+1 to n do
        if (A[i]+A[j]<A[j]+A[i]) then doicho(i,j);
  end;

  procedure inra;
  var
    i :Byte;
  begin
    for i:=1 to n do Write(fo,A[i]);
  end;

Begin
  docdl;
  sapxep;
  inra;
  Close(fi); close(fo);
End.
