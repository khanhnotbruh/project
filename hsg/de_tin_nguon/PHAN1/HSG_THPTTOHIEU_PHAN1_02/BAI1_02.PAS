var f1,f2:text;
s,max:string;
i,j,n,t:longint;
a,code:integer;
begin
assign(f1,'BAI1_02.inp');
assign(f2,'BAI1_02.out');
reset(f1);rewrite(f2);max:='0';
readln(f1,s); close(f1);
n:=length(s);t:=0;
for i:=1 to n do
        begin
          val(s[i],a,code);
          t:=t+a;
          if s[i]>max then max:=s[i];
        end;
writeln(f2,t);
writeln(f2,max);
for i:=1 to n do if s[i]=max then write(f2,i,' ');
close(f2);
end.
