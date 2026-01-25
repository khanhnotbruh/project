program tongchuso;
var fi,fo:text;
       s,tg,i,max,vt :longint; A:ansistring;
procedure docdl;
begin
        assign(fi,'tongchu.inp');
        assign(fo,'tongchu.out');
        reset(fi);
        readln(fi,A);
        close(fi);
        rewrite(fo);
end;
begin
 docdl; s:=0; max:=0;
 for i:=1 to length(A) do
  begin
   tg:=ord(A[i])-48;
   if tg>=max then begin max:=tg; vt:=i; end;
   s:=s+tg;
  end;
writeln(fo,s);
writeln(fo,max);
writeln(fo,vt);
close(fo);
end.

