program mahoa;
  var S:string;
       tmp, i:byte;
        k:byte;
    BEGIN
        write('nhap xau : '); readln(s);
           k:=length(S);
            for i:=1 to k do
               if s[i]<> ' ' then
                  begin
      tmp:= ord(s[i])+5;
          if tmp>90 then tmp:=tmp-26;
       s[i]:= char(tmp);
 end; 
             writeln('xau moi la: ', s);
       readln
   END.

