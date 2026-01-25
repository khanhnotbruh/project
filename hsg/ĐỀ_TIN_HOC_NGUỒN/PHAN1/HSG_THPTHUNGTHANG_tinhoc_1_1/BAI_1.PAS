program Dien_khuyet_xau_ki_tu;
uses crt;
var f1,f2: text;
    s1,s2: string;
procedure xuli;
    var i,j: byte;
        k: integer;
        s: string;
    begin
         k:=0;
         while not eof(f1) do begin
               readln(f1,s1);
               readln(f1,s2);
               k:=k+2;
               if (length(s1)>100) or (length(s2)>100) or (k>10000) then begin
                   rewrite(f2);
                   write(f2,'NHAP LAI!');
                   close(f2);
                   halt;
                   end;
               s:=s1+s2;
               for i:=length(s) downto 2 do
                   for j:=i-1 downto 1 do
                       if s[i]=s[j] then delete(s,i,1);
               write(s1);
               writeln;
               write(s2);
               writeln;
               write(s);
               writeln;
               write(f2,s);
               writeln(f2);
               end;
         close(f1);
         close(f2);
    end;
begin
    clrscr;
    assign(f1,'D:\Bai1.INP');
    reset(f1);
    assign(f2,'D:\Bai1.OUT');
    rewrite(f2);
    xuli;
    readln
end.