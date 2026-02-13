{$H+}
const
        tfi     =       '';
        tfo     =       '';
var
        p,i,j   :  longint;
        a,b     :  string;
        d       :  array['a'..'z'] of longint;
        ok      :  boolean;
Begin
  assign(input,tfi); reset(input);
  assign(output,tfo); rewrite(output);
  readln(p);
  for i := 1 to p do
        begin
            ok := true;
            readln(a);
            readln(b);
            fillchar(d,sizeof(d),0);
            for j := 1 to length(a) do inc(d[a[j]]);
            for j := 1 to length(b) do
                if d[b[j]] > 0 then
                        begin
                           writeln('YES');
                           ok := false;
                           break;
                        end;
            if ok then writeln('NO');
        end;
End.