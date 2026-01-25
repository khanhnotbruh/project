const fi = 'DAYSO.TXT';
max = 500;
var a:array[1..500] of word;
     so:array[1..4,0..9,0..9] of boolean;
     f:text;   tangdan:boolean;
     n,s,fn,socu:word;  Tongxk:longint;
{************************************}
procedure nhap;
var i,k:word;
begin
fillchar(a,sizeof(a),0);
assign(f,fi);
reset(f);
   		socu:=0; tangdan:=true;
   		readln(f,n,s);
   		for i:= 1 to n do
      		begin
        			readln(f,k);
        			inc(a[k]);
        			if k<socu then tangdan:=false;
        			socu:=k;
        			if k>100 then
        so[k div 100,(k div 10)mod 10,k mod 10]:=true;
      		end;
   		fn:=k;
close(f);
end;
{************************************}
procedure demxungkhac;
var i:word;
begin
tongxk:=0;
   	for i:= 1 to ((s-1)div 2) do
   	tongxk:=tongxk+a[i]*a[s-i];
   	if not odd(s) then
   	begin
       		i:=s div 2;
       		tongxk:=tongxk+(a[i]*(a[i]-1) div 2);
   	end;
end;
{************************************}
procedure timlytuong;
var i,j,k:byte;
begin
   	for i:=1 to 4 do
   	for j:=0 to 9 do
   	for k:=0 to 0 do
  if so[i,j,k] then
   		begin
   if (j<>k)and so[i,k,j] then
     		begin write(i,j,k,' ',i,k,j); exit; end;
if (k<>0)and(i<>k)and so[k,j,i] then
begin write(i,j,k,' ',k,j,i); exit; end;
if (j<>0)and(i<>j)and so[j,i,k] then
     			begin write(i,j,k,' ',j,i,k); exit; end;
 if (k<>0)and((i<>j)or(i<>k)or(k<>j))and so[k,i,j] then
     		begin write(i,j,k,' ',k,i,j); exit; end;
     if (j<>0)and((i<>j)or(i<>k)or(k<>j))and so[j,k,i] then
     	begin write(i,j,k,' ',k,j,i); exit; end;
   		end;
   		writeln(0,' ',0);
end;
{************************************}
procedure inkq;
begin
writeln(n,' ',s,' ',fn);
if tangdan then writeln('CO')
else writeln('KHONG');
demxungkhac;
writeln(tongxk);
timlytuong;
end;
{************************************}
begin
nhap;
inkq;
readln;
end.
