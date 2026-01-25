Program bai1;   const tfi = 'BAI3.inp'; tfo = 'BAI3.out';
Var f1,f2:text; i,j,num,n:integer;s:array[1..1000] of string;
        tong:array[1..1000] of longint;
        a:array[1..1000] of byte;
Procedure motep;
        begin
                Assign(f1,tfi); Reset(f1);
                Assign(f2,tfo); Rewrite(f2);
        end;
Procedure dongtep;
        begin
                close(f1); close(f2);
        end;
Procedure Doc;
        begin
                  Readln(f1,n);
                  for i:=1 to n do  readln(f1,s[i]);
        end;
Procedure xuly;
        begin
              for j:=1 to n do begin  tong[j]:=0;
              for i:= 1 to length(s[j]) do begin a[i]:=0;
                                        val(s[j][i],a[i],num);
                                        tong[j]:=tong[j]+a[i]*(9-i);
                                        end;
              writeln(f2,chr((tong[j] mod 9)+65));end;

        end;
 BEGIN
        motep;
        doc;
        xuly;
        dongtep; END.
