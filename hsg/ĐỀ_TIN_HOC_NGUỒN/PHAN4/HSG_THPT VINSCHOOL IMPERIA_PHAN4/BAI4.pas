Var     i,n,k,x :       longint;
        B,A     :       array[1..100000] of longint;
        Ok      :       boolean;
procedure qsort;
procedure sort(l,r: longint);
      var
         i,j,x,y,tmp: longint;
      begin
         i:=l;
         j:=r;
         x:=a[(l+r) div 2];
         repeat
           while a[i]<x do
            inc(i);
           while x<a[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=a[i];
                a[i]:=a[j];
                a[j]:=y;
                tmp:=B[i];
                B[i]:=B[j];
                B[j]:=tmp;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort(l,j);
         if i<r then
           sort(i,r);
      end;

    begin
       sort(1,n);
    end;
Function TKNP(x :       longint)        :       longint;
Var     l,r,m,kq  :       longint;
Begin
        l:=1;
        r:=n;
        kq:=0;
        While l <= r do
                Begin
                        m:=(l+r) div 2;
                        IF A[m] = x then Exit(B[m]);
                        IF A[m] > x then r:=m-1;
                        IF A[m] < x then l:=m+1;
                End;
        Exit(kq);
End;
Begin
Assign(input,'BAI3.INP');Reset(input);
Assign(output,'BAI3.OUT');Rewrite(output);
Readln(n,k);
        For i:=1 to n do
                Begin
                        Read(A[i]);
                        B[i]:=i;
                End;
Qsort;
Ok:=false;
        For i:=1 to n do
                Begin
                        x:=TKNP(k*2-A[i]);
                        IF x<>0 then
                                Begin
                                        OK:=true;
                                        Write(x,' ',B[i]);
                                        Exit
                                End;
                End;
        IF not OK then Write('0 0');
End.