var ch:char; 
Fi,fo:text; 
a:array['a'..'z'] of longint; 
begin 
Assign(fi,'bai1.inp');reset(fi); 
Assign(fo,'bai1.out');rewrite(fo); 
while not eoln(fi) do 
begin 
read(fi,ch); 
inc(a[ch]); 
end; 
readln; 
for ch:='a' to 'z' do  
if a[ch] mod 2 <> 0 then begin 
  write(fo,'No'); 
  exit; 
  end; 
write(fo,'Yes'); 
Close(fi); 
Close(fo); 
end. 
