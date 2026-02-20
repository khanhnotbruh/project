Phạm mạnh Hùng -- thpt lê quý đôn

Bài 1: 6 điểm

Xâu rút gọn là một xâu được trích từ một xâu đầy đủ theo nguyên tắc "nếu
có n (n&gt;1) kí

tự x liên tiếp thì ta rút gọn lại thành xâu xn"

\- Dữ liệu vào: tệp BAI1.INP chứa một xâu kí tự chỉ gồm các kí tự chữ
cái, độ dài

xâu không vượt quá 150 kí tự

\- Dữ liệu ra: đưa ra tệp văn bản BAI1.OUT ghi xâu rút gọn.

> \- Ví dụ:

  -----------------------------------------------------------------------
  Bai1.inp                             Bai1.out
  ------------------------------------ ----------------------------------
  Aaaaabbbbbbcccccccabc                a5b6c7abc

  -----------------------------------------------------------------------

Bai 1:

var s,s1:string;

fi,fo:text;

i,dem:integer;

Begin

assign(fi,&#39;BAI1.INP&#39;);reset(fi);

assign(fo,&#39;BAI1.OUT&#39;);rewrite(fo);

read(fi,s);

i:=1;

while(i&lt;=length(s)) do

begin

dem:=1;

while((s\[i\]=s\[i+1\]) and (i&lt;length(s))) do

begin

dem:=dem+1;

delete(s,i,1);

end;

if dem&gt;1 then

begin

str(dem,s1);

insert(s1,s,i+1);

i:=i+2;

end

else i:=i+1;

end;

write(fo,s);

close(fi);

close(fo);

End.
