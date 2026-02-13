var f1,f2:text;
s:string;
i,j,n,d,a:byte;
arr:array[1..10000000]of byte;
begin
assign(f1,'HVTT.inp');
assign(f2,'HVTT.out');
reset(f1);rewrite(f2);
readln(f1,n);
for i:=1 to n do
begin
      read(f1,arr[i]);
      d:=0;
      for j:=i downto 1 do if arr[j] <arr[i] then inc(d);
write(f2,d,' ');
end;
close(f2);
end.
