var s : string;
i : integer;
BEGIN
   write('Nhap vao 1 xau s:');   readln(s);
     while s[1]=' ' do delete(s,1,1); 
     while s[length(s)]=' ' do delete(s,length(s),1); 
     for i := length(s) downto 2 do
         if (s[i]=' ') and (s[i-1]=' ') then delete(s,i,1);
     s[1] := Upcase(s[1]);
     for i := 2 to length(s) do         
           if s[i-1]=' ' then s[i] := Upcase(s[i]) 
         else
             if s[i] in ['A'..'Z'] then	s[i] := chr(ord(s[i]) + 32); 
      writeln('Xau s sau khi chuan hoa:',s);
   readln;
END.


     while s[1]=' ' do delete(s,1,1); {xoá các kí t? cách th?a ? d?u xâu}
     while s[length(s)]=' ' do delete(s,length(s),1); {xoá các kí t? cách th?a ? cu?i xâu}
{xoá các kí t? cách th?a ? gi?a các t?: n?u s[i-1] là cách thì s[i] là d?u cách là th?a. Ph?i dùng vòng l?p for downto vì n?u trong quá trình xoá ta làm gi?m chi?u dài c?a xâu, n?u for to s? không d?ng du?c.}
     for i := length(s) downto 2 do
         if (s[i]=' ') and (s[i-1]=' ') then delete(s,i,1);
{Chuy?n kí t? d?u xâu thành ch? hoa}
     s[1] := Upcase(s[1]);
 {Chuy?n s[i] là kí t? d?u t? thành ch? hoa. N?u kí t? tru?c dó( s[i-1]) là d?u cách thì s? d?i kí t? sau dó (S[i]) thành hoa}   
     for i := 2 to length(s) do
         if s[i-1]=' ' then s[i] := Upcase(s[i]) 
         else
             if s[i] in ['A'..'Z'] then	{s[i] là kí t? ch? hoa không ? d?u m?t t?}
                s[i] := chr(ord(s[i]) + 32); {thì ph?i chuy?n thành ch? thu?ng}
end;
BEGIN
   write('Nhap vao 1 xau s:');
   readln(s);
   chuanhoa(s);
   writeln('Xau s sau khi chuan hoa:',s);
   readln;
END.
