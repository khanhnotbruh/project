**Bùi Thị Huệ_THPT Phạm Ngũ Lão**

> **CAUHOI**

**[Bài 1]{.underline}: Tính tổng các chữ số** (6 điểm) **(Đặt tên chương
trình nguồn BAI_1.PAS)**

**Viết chương trình tính tổng các chữ số của số nguyên N**

-   Dữ liệu vào: tệp BAI1.INP chứa một số nguyên N có giá trị ≤ 10^9^

-   Dữ liệu ra: đưa ra tệp văn bản BAI1.OUT ghi một số nguyên là tổng
    > cần tìm

-   Ví dụ:

  -----------------------------------------------------------------------
  BAI1.INP                         BAI1.OUT
  -------------------------------- --------------------------------------
  1234                             10

  -----------------------------------------------------------------------

ĐÁP ÁN

Program Tong_cac_chu_so;

Uses Crt;

Var n,i,j,t,b: longint;

f,g:Text;

BEGIN

assign(f,\'TongCS.inp\');

assign(g,\'TongCS.out\');

reset(f); rewrite(g);

Readln(f,n);

t:=0;

while n \<\>0 do

begin

b:=n mod 10;

t:= t+b;

n:=n div 10;

end;

Write(\' tong cac chu so la:\', t);

Write(g,t);

Close(f); Close(g);

Readln;

END.
