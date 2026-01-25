Program Tong_cac_uoc_nguyen_to;
Uses Crt;
Var n,i,j,d,tong: longint;
    f,g:Text;
BEGIN
 Clrscr;
  assign(f,'TongUNT.inp');
 assign(g,'TongUNT.out');
 reset(f); rewrite(g);
 Readln(f,n);
 Write('cac uoc nguyen to cua ',n,' la:');
 for i:= 2 to n do
  if n mod i=0 then
    Begin
      J:=2;
      While (j<=sqrt(i)) and (i mod j <>0) do

       j:=j+1;
      if j>sqrt(i) then
      begin
        tong:=tong+i;
        write(i,' ');
        Write(g,i,' ');
      end;
    end;
  Writeln;
  Write('Tong cac uoc nguyen to cua ',n,' la:',tong);
  Writeln(g,' ');
  Write(g,tong);
  Close(f); Close(g);
 Readln;
 END.


 
