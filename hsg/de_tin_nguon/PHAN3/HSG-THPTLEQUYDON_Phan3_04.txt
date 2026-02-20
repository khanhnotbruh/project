**Vũ Thị Hiền -- THPT Lê Quý Đôn**

**Bài 3: Mã hóa xâu:**

Cho xâu S chỉ gồm các kí tự 0 và 1 (số lượng kí tự 1\<S\<255). Viết
chương trình mã hóa xâu S theo quy tắc sau: đi từ trái sang phải của xâu
S nếu ta gặp một đoạn liên tiếp gồm m kí tự 1, ta thay đoạn đó bằng xâu
am, nếu ta gặp một đoạn liên tiếp gồm n kí tự 0, ta thay đoạn đó bằng
xâu bn, cứ như thế cho tới hết xâu.

**\* Dữ liệu:**Vào từ file v¨n b¶n**BAI3.INP**

\- Gồm 1 dòng chứa xâu ký tự S.

**\* Kết quả:**Ghi ra tÖpvăn bản**BAI3.OUT**

> \- Ghi xâu S sau khi mã hóa.

**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI3.INP**                        **BAI3.OUT**
  ----------------------------------- -----------------------------------
  00011110000011                      b3a4b5a2

  -----------------------------------------------------------------------

**Bài 3 (gợi ý): 8 điểm**

var s,s1,st:string;

i,j:byte;

t:text;

begin

assign(t,\'Bai3.INP\');

reset(t);

read(t,s);

close(t);

assign(t,\'Bai3.OUT\');

rewrite(t);

i:=1; st:=\'\';

while (i\<length(s)) do

if (s\[i\]=\'0\') then

begin

j:=i+1; s1:=\'\';

while((j\<=length(s)) and (s\[j\]=\'0\')) do

inc(j);

str(j-i,s1);

st:=st+\'b\'+s1;

i:=j;

end

else

begin

j:=i+1; s1:=\'\';

while((j\<=length(s)) and (s\[j\]=\'1\')) do

inc(j);

str(j-i,s1);

st:=st+\'a\'+s1;

i:=j;

end;

write(t,st);

close(t);

End.
