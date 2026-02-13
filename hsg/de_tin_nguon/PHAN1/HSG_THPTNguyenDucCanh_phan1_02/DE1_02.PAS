program bai2;
const fi='DE1_02.inp';
      fo='DE1_02.out';
var f1,f2:text;
    n,i:integer;
    s:string;
Function hedem(st:string): integer;
var so,k,j:integer;
    begin
    so:=1;
    for j:=2 to length(st) do
        begin
        if st[j] ='1' then k:=1 else k:= 0;
        so:=2 * so+ k;
        end;
    hedem:=so;
    end;

BEGIN
     assign(f1,fi);
     assign(f2,fo);
     reset(f1);
     rewrite(f2);
     readln(f1,n);
     for i:= 1 to n do
     begin
          readln(f1,s);
          writeln(f2,hedem(s));
     end;
     close(f1);
     close(f2);
END.