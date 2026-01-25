BAI2.pas
program BAI2;
const   fin = 'BAI2.TXT
        fout = 'BAI2_OUT.TXT' ;
var     A, B: array [1..50] of longint;
        k, i, t, N, j: longint;
        s: int64;
        f: text;
begin
        assign (f, fin);
        reset (f);
        read (f, N);
        close (f)  ;
        k:=0;
        for i:=2 to N do
                begin
                t:=i;
                for j:=1 to k do
                while t mod A[j]=0 do
                        begin
                        Inc(B[j]);
                        t:=t div A[j];
                        end;
                if t>1 then
                        begin
                        Inc(k);
                        A[k]:=t;
                        B[k]:=1;
                        end;
                end;
        s:=1;
        for i:=1 to k do s:= s*(b[i]+1);
        Assign(f, fout);
        Rewrite (f);
        Write (f, S);
        Close (f);
End.