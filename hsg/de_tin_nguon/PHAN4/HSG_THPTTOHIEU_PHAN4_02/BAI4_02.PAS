var f1,f2:text;
n,a,i,vd,j,vc,max,t:longint;
arr:array[1..10000]of longint;

begin
assign(f1,'BAI4_02.INP');
assign(f2,'BAI4_02.OUT');
reset(f1);
readln(f1,n);
for i:=1 to n do read(f1,arr[i]);
close(f1);
Max:=arr[1]+arr[2];
vd:=1;vc:=2;
for i:=1 to n-1 do
begin
           t:=arr[i];
            for j:=i+1 to n do
                begin
                    t:=t+arr[j];
                    if t>max then
                        begin
                                max:=t;
                                vd:=i;
                                vc:=j;
                        end;
                end;
end;
rewrite(f2);writeln(f2,vd,' ',vc);write(f2,max);
close(f2);
end.
