VAR f1,f2: text;
    s,x,y,so: ansistring;
    i: longint;
    kt: boolean;
BEGIN
   assign(f1,'danhba.inp');reset(f1);
   assign(f2,'danhba.out');rewrite(f2);
   readln(f1,S);
   S:= upcase(S);
   kt:= false;
   while not eof(f1) do
   begin
       x:= '';y:='';
       i:= 1;
       readln(f1,x);
       x:= upcase(x);
       y:= copy(x,1,length(s));
       if y=S then
       begin
          so:= copy(x,pos(' ',x)+1,length(x)-pos(' ',x));
          writeln(f2,so);
          kt:= true;
          break;
       end;
   end;
   if kt= false then writeln(f2,'0');
   close(f1);
   close(f2);
End.
