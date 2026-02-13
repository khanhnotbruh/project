var s1, s2: ansistring;
    a, b: array['a'..'z'] of longint;
    f,g:text;
    i, t: longint;
    c: char;

function ok: boolean;
var l: char;
begin
   for l:='a' to 'z' do if ((a[l]<>0) and (b[l]=0)) or ((a[l]=0) and (b[l]<>0)) then exit(false);
   exit(true);
end;


BEGIN
   assign(f,'bai1.inp');reset(f);
   assign(g,'bai1.out');rewrite(g);
   for t:=1 to 3 do
   begin
      readln(f,s1);
      readln(f,s2);
      for c:='a' to 'z' do
      begin
	    a[c]:=0; b[c]:=0;
      end;

      for i:=1 to length(s1) do inc(a[s1[i]]);
      for i:=1 to length(s2) do inc(b[s2[i]]);
      if ok then writeln(g,'YES') else writeln(g,'NO');
   end;
   close(f);close(g);
END.
