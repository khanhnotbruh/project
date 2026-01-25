var a:array[1..10000] of 0..1;
    n,i,j,x:integer;
    cokq:boolean;  f:text;
{************************************}
function ktrngto(m:integer):boolean;
var i:integer;
begin
     if m=1 then ktrngto:=false;
     if (m=2)or(m=3) then ktrngto:=true;
     if m>3 then
       begin
           i:=2;
           while (m mod i<>0) and( i< round(sqrt(m))) do inc(i);
           if m mod i=0 then ktrngto:=false else ktrngto:=true;
       end;
end;
{************************************}
Begin
     fillchar(a, sizeof(a),0);
     assign(f,'BAI3.TXT');reset(f);readln(f,n);cokq:=false;
     for i:=1 to n do
     begin
          readln(f,x); if a[x]=0 then if ktrngto(x)=true then begin a[x]:=1;cokq:=true;end;
     end;
     close(f);
     assign(f,'BAI3_OUT.TXT');rewrite(f);
     if cokq=false then writeln(f,0)
     else for i:=1 to 10000 do if a[i]=1 then writeln(f,i);
     close(f);
End.
