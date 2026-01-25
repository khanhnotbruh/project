var st:string;
      f1,f2:text;
    procedure input;
     begin
      assign(f1,'bai1.inp');reset(f1);
      read(f1,st);
      end;
    procedure process;
     var c,l,i,x:longint;code:integer;
     begin
      for i:=1 to length(st) do
        if st[i] in ['1'..'9'] then
           begin
           val(st[i],x,code);
           if x mod 2=0 then  c:=c+1
          else l:=l+1;
         end;
      end;
    procedure output;
      var c:longint;
     begin
       assign(f2,'bai1.out');
       rewrite(f2);
       if c=1 then write(f2,'can bang')
         else if c>1 then write(f2,'chan')
                  else write(f2,'le');
       close(f2);
       end;
     begin
       input;
       process;
       output;
      end.

