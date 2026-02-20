Nguyễn Đình Giáp - THPT Kiến An

CAUHOI

Bài 1: *(4,0 điểm).* Đếm từ

Viết chương trình nhập vào một xâu từ bàn phím và in ra màn hình số từ
của xâu. Biết rằng từ là một dãy các kí tự cách nhau bởi dấu cách?

*Ví dụ:*

  -----------------------------------------------------------------------
  DEMXAU.INP                                    DEMXAU.OUT
  --------------------------------------------- -------------------------
  Ki thi hoc sinh gioi.                         5

  -----------------------------------------------------------------------

DAPAN

PROGRAM bai1;

VAR s:string;

i:byte;

dem:integer;

BEGIN

Write(\'Nhap vao xau s:\');readln(s);

s:=\' \' +s; { Cong them dau cach truoc xau de dem ca tu dau tien}

dem:=0;

for i:=2 to length(s) do

if (s\[i-1\] =\' \' ) and(s\[i\]\<\> \' \') then dem:=dem+1;

write(\'so tu:\',dem);

readln;

END.
