program bai1;
var s : string;
        fi,fo:text;

Procedure nhap;
begin
assign(fi,'bai1.inp');
reset(fi);
readln(fi,s);
close(fi);
end;

function sotu(s : string) : integer;
var i, dem : integer;
begin
     s := ' ' + s; dem := 0;
     for i := 2 to length(s) do
         if (s[i-1]=' ') and (s[i]<>' ') then dem := dem + 1;
     sotu := dem;
end;
procedure chuanhoa(var s : string);
var i : integer;
begin
     while s[1]=' ' do delete(s,1,1);
     while s[length(s)]=' ' do delete(s,length(s),1);
     for i := length(s) downto 2 do
         if (s[i]=' ') and (s[i-1]=' ') then delete(s,i,1);
     s[1] := Upcase(s[1]);
     for i := 2 to length(s) do
         if s[i-1]=' ' then s[i] := Upcase(s[i])
         else
             if s[i] in ['A'..'Z'] then	
                s[i] := chr(ord(s[i]) + 32);
end;

BEGIN
   nhap;
   assign(fo,'bai1.out');
   rewrite(fo);
   writeln(fo,sotu(s));
   chuanhoa(s);
   writeln(fo,s);
   close(fo);
END.
