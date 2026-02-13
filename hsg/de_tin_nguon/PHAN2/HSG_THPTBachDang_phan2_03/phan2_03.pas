Program bai1;
Uses crt;
Var  s:string; i,max,t,k,d:byte;
Begin
clrscr;
 Write('nhap xau'); Readln(s);
k:=length(s);
 max:=0;
t:=0;
for i:=1 to k do
begin
   if s[i]= 't' then
    begin
       t:=t+1;
       if t<max then
          begin
             max:=t;
             d:=i;
          end;
      end
   else t:=0;
 end;
 if t<max then max:=t;
for i:=d-max+1 to d do write(s[i]);
readln
END.
