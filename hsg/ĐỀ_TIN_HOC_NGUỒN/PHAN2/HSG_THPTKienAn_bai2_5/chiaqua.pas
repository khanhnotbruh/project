var i,x,y:longint;
f,g: text;
function UCLN(x,y:longint):longint;
var sd:longint;
begin
        while y<>0 do
        begin
                sd:= x mod y;
                x:=y;
                y:=sd;
        end;
        UCLN:=x;
end;
begin
        assign(f,'gift.inp'); reset(f);
        assign(g,'gift.out'); rewrite(g);
        read(f,x,y);
        for i:=1 to UCLN(x,y) do
        begin
                if (x mod i=0) and (y mod i =0)  then
                writeln(g,i,' ',x div i,' ',y div i);
        end;
        close(f);
        close(g);
  readln
End.
