var   f,g:text;
          s:ansistring;
Procedure Nhap;
Begin
     assign(f,'nmax.inp'); reset(f);
     assign(g,'nmax.out'); rewrite(g);
     read(f,S);
     close(f);
end;
Procedure xuly;
var i,j,k:byte;
begin
     i:=1;
     repeat
           if s[i] in ['0'..'9'] then inc(i) else delete(s,i,1);
     until i>length(s);
    for i:=1 to 5 do
     begin
          k:=i;
          for j:=i to length(s)+i-5 do
              if s[k]<s[j] then k:=j;
              if k>i then delete(s,i,k-i);
     end;
     writeln(g,copy(s,1,5));
     close(g);
end;
Begin
     Nhap;      xuly;     readln;
End.
