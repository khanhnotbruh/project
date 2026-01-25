var s1, s2: string;
    a, b: array[‘a’..’z’] of longint;
fi,fo:text;
function ok: boolean;
var i: char;
begin
   for i:=’a’ to ‘z’ do if a[i]<>b[i] then exit(false);
   exit(true);
end;

var i, t: longint;
    c: char;

BEGIN
Assign(fi,'bai3.inp');reset(fi);
Assign(fo,'bai3.out');rewrite(fo);  
for t:=1 to 3 do
   begin
      readln(fi,s1);
      readln(fi,s2);
      for c:=’a’ to ‘z’ do
      begin a[c]:=0; b[c]:=0; end;
      for i:=1 to length(s1) do inc(a[s1[i]]);
      for i:=1 to length(s2) do inc(b[s2[i]]);
      if ok then writeln(fo,'YES') else writeln(fo,'NO');
   end;
close(fi);
close(fo);
END.
