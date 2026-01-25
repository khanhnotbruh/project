Program bai2;
Const fi='bai2.inp';
      fo='bai2.out';
var a,b: Longint;
    s:array[1..100000000] of longint;
    i,j,N,K,Max:Longint;

Procedure doc_xl;
var p:longint;
Begin
   assign(input,fi); reset(input);
   assign(output,fo); rewrite(output);
   Readln(N,K);
   max:=-1;
   fillchar(s,sizeof(s),0);
   for i:=1 to n do
   Begin
      readln(a,b);
      inc(s[a*b]);
      p:=2*(a+b);
      if max < p then max:=p;
   End;
   Write(s[k],' ',Max);
end;
Begin
   doc_Xl;
End.