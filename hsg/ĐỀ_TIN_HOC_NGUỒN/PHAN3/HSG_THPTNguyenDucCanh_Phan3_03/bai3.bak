var s:string; 
fi,fo:text; 
temp,d,c,i:longint; 
begin 
assign(fi,'bai3.inp');reset(fi); 
assign(fo,'bai3.out');rewrite(fo); 
read(fi,s); 
while length(s)>1 do  
begin 
  temp:=0; 
  for i:=1 to length(s) do 
  begin 
  val(s[i],c); 
  temp:=temp+c; 
  end; 
  str(temp,s); 
  end; 
write(fo,temp); 
close(fi); 
close(fo); 
end. 
