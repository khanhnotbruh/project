var n,z,x,y:int64;
t,i:byte;
fi,fo:text;
procedure docdl;
begin
 assgin(fi,’bai1.inp’);reset(fi);
 assgin(fo,’bai1.out’);reset(fo);
end;
begin
 docdl;
 readln(fi,T);
for i:=1 to t do
     begin
      readln(fi,n);
		if n mod 8=0 then begin z:= n div 8; x:=5*z;y:=2*z; writeln(fo,x,' ',y,' ',z) end
        else writeln(-1);
	end;
close(fi); close(fo);
end.
