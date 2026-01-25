program fibonto;
var
    n:int64;
    i:longint;
    f1,f2:text;
    f:array[1..32000] of int64;
function ktnt(x:int64):boolean;
     var j:longint; ok:boolean;
        begin
         ktnt:=true;
         if x=1 then ktnt:=false
         else
         begin
            for j:=2 to trunc(sqrt(x)) do

                if (x mod j=0) then
                   begin
                      ktnt:=false;
                      break;
                   end;
         end;
