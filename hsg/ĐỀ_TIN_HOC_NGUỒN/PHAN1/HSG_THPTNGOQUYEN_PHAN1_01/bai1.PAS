const   fi='bai1.inp';
        fo='bai1.out';
var     s:ansistring;
        i,dem:longint;

procedure doc;
   begin
       assign(input,fi); reset(input);
       assign(output,fo); rewrite(output);
       readln(s);
       close(input);
   end;

BEGIN
    doc;
    dem:=0;
    for i:=1 to length(s) do
       if s[i] in ['A'..'Z'] then inc(dem);
    writeln(dem);
    close(output);
END.
