Var   f1,f2:text;
      a,f:array[0..100000]of longint;
      i,n,k:longint;
      sum:int64; 
Function min(m,n:longint):longint;
Var i:longint;
begin
        If m<=0 then m:=1;
        If n-m+1<k then exit(0);
        min:=sum;
        For i:=m to n do if f[i]<min then min:=f[i];
end;
BEGIN
        Assign(f1,'bai4.inp');Reset(f1);
        Assign(f2,'bai4.out');Rewrite(f2);
        Readln(f1,n,k);
        For i:=1 to n do read(f1,a[i]);
        For i:=1 to n do sum:=sum+a[i];
        f[0]:=0; a[n+1]:=0;
        For i:=1 to k do f[i]:=a[i];
        For i:=k+1 to n+1 do
            begin
               f[i]:=min(i-k,i-1)+a[i];
            end;
        Write(f2,sum-f[n+1]);
        Close(f1); Close(f2);
END.
