var n,k,S,dem: longint;
    
begin
       
   assign(Input,'Bai1.INP');
      
   reset(Input);
        
   readln(n,k);
      
   S:=0;
      
   dem:=0;
      
   while S < n do
   
     begin
        
        dem:=dem+1;
 
        S:=S+k;
       
        k:=k*2;
        
     end;
       
   assign(Output,'Bai1.OUT');

   rewrite(Output);
     
   write(dem);
    
   close(Input);
    
   close(Output);

end.