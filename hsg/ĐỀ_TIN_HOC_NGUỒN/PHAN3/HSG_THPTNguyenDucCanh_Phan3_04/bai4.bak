uses math; 
var n:longint; 
fi,fo:text; 
procedure chuyen (a,c:char); 
begin 
writeln(fo,a,' ',c); 
end; 
procedure dq(n:longint;a,b,c:char); 
begin 
if n=1 then chuyen(a,c) else begin 
dq(n-1,a,c,b); 
chuyen(a,c); 
dq(n-1,b,a,c); 
end; 
end; 
begin 
assign(fi,'bai4.inp');reset(fi); 
assign(fo,'bai4.out');rewrite(fo); 
read(fi,n); 
writeln(fo,2**n-1); 
dq(n,'1','2','3'); 
close(fi); 
close(fo); 
end. 