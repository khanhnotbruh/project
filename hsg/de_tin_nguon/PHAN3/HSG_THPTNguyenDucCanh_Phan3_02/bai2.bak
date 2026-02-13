type mang=array['a'..'z'] of longint;  
var  
a,b:mang;  
ch:char;  
fi,fo:text;  
dem:longint;  
begin  
assign(fi,'bai2.inp');reset(fi); 
assign(fo,'bai2.out');rewrite(fo); 
fillchar(a,sizeof(a),0);  
fillchar(b,sizeof(b),0);  
while not eoln(fi) do  
begin  
read(fi,ch);  
inc(a[ch]);  
end;  
readln(fi);  
while not eoln(fi) do  
begin  
read(fi,ch);  
inc(b[ch]);  
end;  
for ch:='a' to 'z' do  
if (a[ch]>0) and(b[ch]=0) then dem:=dem+a[ch] else if (a[ch]=0) and (b[ch]>0) then dem:=dem+b[ch];  
write(fo,dem);  
close(fi); 
close(fo); 
end. 
