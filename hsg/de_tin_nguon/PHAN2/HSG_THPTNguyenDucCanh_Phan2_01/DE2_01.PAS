program BAI1;
var f1, f2 : text;
    s, s1 : string;
    i, tong, t, code : integer;
BEGIN
     assign(f1,'DE2_01.inp');
     assign(f2,'DE2_01.out');
     reset(f1);
     rewrite(f2);
     read(f1,s);
     S1:='';
     tong:=0;
     for i := 1 to length(s) do
         if ( upcase(s[i]) >= 'A' ) and ( upcase (s[i]) <= 'Z' ) then s1:=s1+ s[i]
         else
         begin
         val(s[i],t,code) ;
         tong := tong + t;
         end;
     writeln(f2,s1);
     writeln(f2, tong);
     close(f1);
     close(f2);
END.