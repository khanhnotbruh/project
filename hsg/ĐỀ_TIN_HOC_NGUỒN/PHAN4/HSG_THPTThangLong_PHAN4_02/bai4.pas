CONST
  tfi = 'BAI4.INP';
  tfo = 'BAI4.OUT';
TYPE
  arr1 = array[0..1000] of int64;
VAR
  a             : arr1;
  N,m,p,q,kq,t  : longint;
  fi,fo         : text;
(*--------------------------------*)
Function ngto(x : longint) : boolean;
  Var
    i : longint;
  Begin
    if x < 2 then exit(false);
    for i := 2 to trunc(sqrt(x)) do
         if x mod i = 0 then exit(false);
    exit(true);
  End;
(*--------------------------------*)
Procedure xuly;
  Var
     i,x,u,v,j  : longint;
  Begin
     assign(fi,tfi); reset(fi);
     assign(fo,tfo); rewrite(fo);
        readln(fi,n,t);
        readln(fi,p,q,m);
        for i := 1 to n do A[i] := (p*i) mod m + q;
        for i := 1 to t do
          begin
             kq := 0;
             readln(fi,u,v);
             For j := u to v do
                if ngto(A[j]) then inc(kq);
             writeln(fo,kq);
          end;
     close(fo);
     close(fi);
  End;
(*--------------------------------*)
(*--------------------------------*)
BEGIN
  xuly;
END.
