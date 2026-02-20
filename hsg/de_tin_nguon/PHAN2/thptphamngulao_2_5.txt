**Bùi Thị Huệ_THPT Phạm Ngũ lão**

**CAUHOI**

**[Bài 2]{.underline}: Xâu rút gọn** (6 điểm) **(Đặt tên chương trình
nguồn BAI_2.PAS)**

Xâu rút gọn là một xâu được trích từ một xâu đầy đủ theo nguyên tắc "nếu
có n (n\>1) kí tự x liên tiếp thì ta rút gọn lại thành xâu xn"

-   Dữ liệu vào: tệp BAI2.INP chứa một xâu kí tự chỉ gồm các kí tự chữ
    cái tiếng Anh, độ dài xâu không vượt quá 250 kí tự

-   Dữ liệu ra: đưa ra tệp văn bản BAI2.OUT ghi xâu rút gọn.

-   Ví dụ:

  -----------------------------------------------------------------------
  BAI2.INP                            BAI2.OUT
  ----------------------------------- -----------------------------------
  aaaaabbbbbbcccccccabc               a5b6c7abc

  -----------------------------------------------------------------------

ĐÁP ÁN

var s,s1:string;

fi,fo:text;

i,dem:integer;

Begin

assign(fi,\'BAI2.INP\');reset(fi);

assign(fo,\'BAI2.OUT\');rewrite(fo);

read(fi,s);

i:=1;

while(i\<=length(s)) do

begin

dem:=1;

while((s\[i\]=s\[i+1\]) and (i\<length(s))) do

begin

dem:=dem+1;

delete(s,i,1);

end;

if dem\>1 then

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

End,
