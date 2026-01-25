const
     tfi = 'tach_xau.inp';
     tfo = 'tach_xau.out';
var
   fi,fo        : text;
   s1,s2        : string;
   n,i,k        : longint;
BEGIN
     assign(fi,tfi);   reset(fi);
     assign(fo,tfo);   rewrite(fo);
        readln(fi,s1);
        readln(fi,s2);
        n:= length(s1);
        k := pos (s2,s1);
        for i:= 1 to n do
                 if s1[i] in ['0'..'9'] then write(fo,s1[i]);
        writeln(fo);
        if k<> 0 then for i:= k to n do write(fo,s1[i])
                else write(fo,'!!!');
     close(fo);
     close(fi);
END.


