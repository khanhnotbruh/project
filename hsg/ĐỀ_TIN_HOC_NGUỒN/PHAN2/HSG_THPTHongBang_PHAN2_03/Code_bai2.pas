var
        N,j,vt              :       longint;
        st                  :       string[101];
        C,i,res             :       char;
begin
   assign(input,'bai2.inp'); reset(input);
   assign(output,'bai2.out'); rewrite(output);
   readln(st);
   read(C);
   for i := chr(ord(C)-1) downto '0' do
        if pos(i,st) > 0 then
             begin
                res := i;
                break;
             end;
   
 
   writeln(res);
   close(input);
   close(output);
end.
