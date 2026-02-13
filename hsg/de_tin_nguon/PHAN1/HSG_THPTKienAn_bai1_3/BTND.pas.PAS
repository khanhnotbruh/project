USES crt;
CONST INP='BTND.INP';
      OUT='BTND.OUT';
VAR f:text;
    a:integer;
    k:boolean;

(***************************************************)
PROCEDURE Solve;
 var str:char;
 begin
 assign(f,INP);
 reset(f);
 a:=0;
 k:=true;
 while not eof(f) do
  begin
  read(f,str);
  if str='(' then a:=a+1;
  if str=')' then a:=a-1;
  if a<0 then
  begin
  k:=false;
  exit;
  end;
 end;
 if a>0 then k:=false;
 end;
(***********************************************)
PROCEDURE Xuat;
 begin
 assign(f,OUT);
 rewrite(f);
 if k=true then write(f,'1')
 else
 write(f,'0');
 close(f);
 end;
(*********************************************)
BEGIN
clrscr;
Solve;
Xuat;
END.


