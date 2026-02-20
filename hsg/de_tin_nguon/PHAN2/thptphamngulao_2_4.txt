**Bùi Thị Huệ_THPT Phạm Ngũ Lão**

**CAUHOI**

**[Bài 2]{.underline}: Xâu rút gọn** (6 điểm) **(Đặt tên chương trình
nguồn BAI_2.PAS)**

Cho một xâu S chỉ gồm các chữ cái in thường tiếng Anh với độ dài tối đa
250 kí tự. Viết chương trình để tạo ra xâu St từ S bằng cách xoá các kí
tự liên tiếp giống nhau trong xâu S và chỉ để lại một kí tự đại diện
trong đoạn đó.

-   Dữ liệu vào: tệp BAI2.INP chứa một xâu S chỉ gồm các kí tự chữ cái
    > tiếng Anh, độ dài xâu không vượt quá 250 kí tự

-   Dữ liệu ra: đưa ra tệp văn bản BAI2.OUT ghi xâu rút gọn St tìm được.

-   Ví dụ:

  -----------------------------------------------------------------------
  BAI2.INP                            BAI2.OUT
  ----------------------------------- -----------------------------------
  aaaaaaabbbbbbbbcccccc               abc

  -----------------------------------------------------------------------

**ĐÁP ÁN**

const fi=\'xaugon.inp\';\
fo=\'xaugon.out\';\
Var s:string;f:text;\
{========}\
procedure doc;\
begin\
assign(f,fi); reset(f);\
readln(f,s);\
end;\
{========}\
procedure xuly;\
var ch,kt:char; i,max,dem:longint;\
begin\
assign(f,fo); rewrite(f);\
i:=1;\
while i\<length(s) do\
begin\
if s\[i\]=s\[i+1\] then delete(s,i,1)\
else inc(i);\
end;\
writeln(f,s);\
close(f);\
end;\
{=========}\
begin\
doc;\
xuly;\
readln;\
end.
