{Phantich so n<2^31 thanh thua so nguyen to}
uses crt;
const maxPrime=46341; {max Prime =  }
      Fin='OT\Bai3.inp';
      Fou='OT\Bai3.out';
var p:array[1..10] of longint;
    q:array[1..10] of integer; { S? th?a s? nguyên t? l?n nh?t là 10?}
    Prime:array[0..maxPrime+1] of boolean;
    n:longint;
    count:integer;
    temp:word;
    f,g:text;
procedure Eratosten;
var i,j:word;
begin
     Fillchar(Prime,sizeof(Prime),true);
     Prime[0]:=false;
     Prime[1]:=false;
     for i:=2 to trunc(sqrt(maxPrime)) do
         if Prime[i] then
            for j:=2 to (maxPrime div i) do
                Prime[i*j]:=false;
end;
function isPrime(n:longint):boolean;
var i,step:word;
begin
     isPrime:=false;
     if n=2 then
     begin
          if Prime[n] then isPrime:=true;
          exit;
     end;
     if ((n mod 2=0) or (n mod 3=0)) then Exit;
     i:=5;
     step:=2;
     while (i<sqrt(n)) do
     begin
          if (n mod i=0) then
          exit;
          i:=i+step;
          step:=6-step;
     end;
     isPrime:=true;
end;
procedure Solve;
begin
     Assign(f,Fin);
     Reset(f);
     Readln(f,n);
     Close(f);
     Assign(g,Fou);
     Rewrite(g);
     if n<2 then
     begin
          writeln(g,'KHONG');
          Close(g);
          Halt;
     end;
     temp:=2;
     count:=0;
     Fillchar(p,sizeof(p),0);
     Fillchar(q,sizeof(q),0);
     while (n<>1) do
     begin
          if isPrime(n) then
          begin
               Inc(count);
               p[count]:=n;
               q[count]:=1;
               exit;
          end
          else
              begin
                   while ((n mod temp<>0)) do
                   begin
                        Inc(temp);
                        while not Prime[temp] do Inc(temp);
                   end;
                   Inc(count);
                   p[count]:=temp;
                   while (n mod temp=0) do
                   begin
                        Inc(q[count]);
                        n:=n div temp;
                   end;
              end;
          end;
end;
procedure Result;
var i:integer;
begin
     {Writeln(g,count);}
     Writeln(g,'CO');
     for i:=1 to count do
     {Writeln(g,p[i],' ',q[i]);}
     for j:=1 to q[i] do  Write(g,p[i],' ');
     Close(g);
end;
BEGIN
     Eratosten;
     Solve;
     Result;
END.

