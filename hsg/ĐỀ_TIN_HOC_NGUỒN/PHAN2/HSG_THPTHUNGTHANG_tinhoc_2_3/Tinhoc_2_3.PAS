var
f1,f2:text;
a: array[0..1000000] of longint;
i,m,n,p,q,t,j:longint;
function dx(so:longint):boolean;
var k,l:byte;x:string;
begin
        str(so,x);
        l:=length(x);
        for k:= 1 to l div 2 do
                if x[k]<> x[l+1-k] then exit(false);
        dx:=true;
end;
function nt (u: longint) : boolean;
var y:longint;
begin
if u< 2 then exit(false) else if u<4 then exit(true) else
        for y:=2 to trunc(sqrt(u)) do
                if u mod y = 0 then exit(false);
        nt:=true;
end;
begin
        assign(f1,'bai3.inp'); reset(f1);
        assign(F2,'bai3.out'); rewrite(F2);
        fillchar(a,sizeof(a),0);
  readln(f1,n,m);
  for i:=1 to n do
  begin
  read(f1,t);
  if dx(t) and nt(t)
  then a[i]:=a[i-1]+1 else a[i]:=a[i-1];
  end;
  readln(f1);
  for i:=1 to m do
  begin
  readln(f1, p,q);
  writeln(f2,a[q]-a[p-1])
  end;
  close(F1);
  close(F2);
end.
