program dasd;
var fi,fo:text;
    s:array[1..1000] of char;
    i:integer;
begin
 assign(fi,'aa.inp');reset(fi);
 assign(fo,'aa.out');rewrite(fo);
 i:=1;
 s[1]:=' ';
 while not eoln(fi) do begin
       i:=i+1;
       read(fi,s[i]);
       if (s[i] in ['a'..'z']) and (s[i-1]=#32) then s[i]:=upcase(s[i]);
       if (s[i] in ['A'..'Z']) and (s[i-1] <>#32) then s[i]:=chr(ord(s[i])+32);
       if (s[i] in ['a'..'z']) or (s[i] in ['A'..'Z']) then write(fo,s[i]);
       if (s[i-1] in ['a'..'z']) and (s[i]=#32) then writeln(fo,'');
       end;
 close(fi);
 close(fo);
end.
