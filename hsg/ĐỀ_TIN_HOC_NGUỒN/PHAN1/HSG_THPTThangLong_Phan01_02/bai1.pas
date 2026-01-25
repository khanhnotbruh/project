var
        i,n,x,s3,s4,vt:longint;
        s1,s2:shortstring;
        s:string;
        tong,hieu,tich,thuong:real;
begin
        assign(input,'bai1.inp');
        assign(output,'bai1.out');
        reset(input);
        rewrite(output);
        read(s);
        for i:=1 to length(s) do
          begin
           begin
                if (s[i] = '+') or (s[i] = '-') or (s[i] = '*') or (s[i] = '/')  then
                vt:=i;

           end;
           s1:=copy(s,1,vt-1); s2:=copy(s,vt+1,length(s)-vt);
           val(s1,s3);
           val(s2,s4);
                if s[vt] ='+' then
                     tong:=s3+s4;
                if s[vt] = '-' then
                     hieu:=s3-s4;
                if s[vt]= '*' then
                      tich:=s3*s4;
                if s[vt] = '/' then
                      thuong:=s3/s4;
           end;
          writeln(tong:10:2);
          writeln(hieu:10:2);
          writeln(tich:10:2);
          writeln(thuong:10:2);
        close(input);
        close(output);
end.

