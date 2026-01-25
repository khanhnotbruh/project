type xau = string[250];
var s           : xau;
    t1,t2       : text;
    m,k,i       : word;
function xtd ( s : xau ) : boolean;
 var kt : boolean;
     ch : char;
     a,b : array['a'..'z'] of byte;
     s1,s2 : xau;
     n : byte;
 begin
  fillchar(a,sizeof(a),0);
  fillchar(b,sizeof(b),0);
  n := length(s); kt := true;
  if odd(n) then k := 2 else k := 1;
  s1 := copy(s,1,n div 2);
  s2 := copy(s,n div 2 + k, n div 2);
  for ch := 'a' to 'z' do
   begin
    while pos(ch,s1) <> 0 do
     begin
      inc(a[ch]);
      delete(s1,pos(ch,s1),1);
     end;
    while pos(ch,s2) <> 0 do
     begin
      inc(b[ch]);
      delete(s2,pos(ch,s2),1);
     end;
    if a[ch] <> b[ch] then
     begin
      kt := false;
      break;
     end;
   end;
  xtd := kt;
 end;
begin
 assign(t1,'Bai2.inp');
 reset(t1);
 assign(t2,'Bai2.out');
 rewrite(t2);
 readln(t1,m);
 for i := 1 to m do
  begin
   readln(t1,s);
   if xtd(s) then writeln(t2,'1') else writeln(t2,'0');
  end;
 close(t1);
 close(t2);
end.
