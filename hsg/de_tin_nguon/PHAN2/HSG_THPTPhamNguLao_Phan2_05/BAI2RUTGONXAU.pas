Program RUT_GON_XAU;
uses crt;
Var
  S1,s,kq:String;
  fi,fo:text;
  vt,i,n,dem:longint;
BEGIN
     Clrscr;
    assign(fi,'Bai1_RGX.inp'); Reset(fi);
    assign(fo,'Bai1_RGX.out'); Rewrite(fo) ;

    read(fi,s);
    i:=1;

 {Write(' Xau s1: ',s1);     writeln;
 Write('xau s2: ',s2);      Writeln; }
   While (i<=length(s)) do
    begin
    dem:=1;
    While((s[i]=s[i+1]) and (i<length(s))) do
     begin
      dem:=dem+1;
      delete(s,i,1);
     end;
    if dem>1 then
     begin
      str(dem,s1);
      insert(s1,s,i+1);
      i:=i+2;
     end
    else i:=i+2;
   end;
  Write('Xau rut gon la :', s);
  Write(fo, s);
  Close(fi); Close(fo);
  Readln;
END.
