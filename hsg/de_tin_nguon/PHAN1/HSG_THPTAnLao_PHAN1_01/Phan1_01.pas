
const   inp = 'xaucon.inp';
        out = 'xaucon.out';
var     f:text;
        st1,st2:ansistring;
        i,j:longint;
        check:array[0..1000] of byte;
{---------------------------------}
Begin
    assign(f,inp);
    reset(f);
    readln(f,st1);
    readln(f,st2);
    close(f);

    fillchar(check,sizeof(check),1);
    assign(f,out);
    rewrite(f);
    if st1=st2 then
       begin
         writeln(f,'CO');
         writeln(f,0);
         end else
         begin
    j:=1;
    for i:=1 to length(st1)  do
       if st1[i]=st2[j] then
          begin
              j:=j+1;
              check[i]:=0;
              if j>length(st2) then break;
          end;


    if  j<=length(st2) then writeln(f,'KHONG') else
      begin
         writeln(f,'CO');
         for i:=1 to length(st1) do
            if check[i]=1 then writeln(f,i);
      end;
    end;
   close(f);

End.
