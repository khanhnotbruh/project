 Dãy con liên ti?p

program day_con;

const fi='daycon.inp';

f0='daycon.out';

type mm=array[1..10000] of integer;

var f:text;

a:mm;

n,m:integer;

procedure doc;

var i:integer ;

begin

assign(f,fi);

reset(f);

read(f,n,m);

for i:=1 to n do read(f,a[i]);

close(f);

end;

procedure xuli;

var i,j,l:integer;

t:longint;

kt:boolean;

begin

assign(f,f0);

rewrite(f);

kt:=false;

for i:=1 to n do

begin

j:=i;

t:=0;

while (t<m )and (j<=n) do

begin

t:=t+a[j];

j:=j+1;

end;

if t=m then

begin

kt:=true;

for l:=i to j-1 do write(f,a[l],' ');

writeln(f);

end;

end;

if kt=false then write(f,0);

close(f);

end;
begin doc; xuli;
end. 