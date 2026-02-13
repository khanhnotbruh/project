const   fi='bai3.inp';
        fo='bai3.out';
var     x:ansistring;
        i,k:longint;
begin
        assign(input,fi); reset(input);
        assign(output,fo); rewrite(output);
        readln(k);
        readln(x);
        while (k<>0) do
           begin
                for i:=1 to length(x) do
                   if (i=length(x)) then delete(x,length(x),1)
                      else if x[i]>x[i+1] then
                         begin
                                delete(x,i,1);
                                break;
                         end;
                dec(k);
           end;
        while x[1]='0' do delete(x,1,1);
        writeln(x);
        close(input); close(output);
end.

