> **Nguyễn Văn Khoa -- THPT Lý Thường Kiệt**
>
> **CAUHOI**

Cho một xâu S chỉ gồm các chữ cái in thường với độ dài tối đa 250 ký tự,
viết chương trình để tạo ra xâu SG từ xâu S bằng cách xóa các ký tự liên
tiếp giống nhau trong xâu S và chỉ để lại một kí tự đại diện trong đoạn
đó.\
Dữ liệu vào: Đọc từ file văn bản XAUGON.INP chứa xâu S chỉ gồm các chữ
cái in thường.\
Kết quả: Ghi ra file văn bản XAUGON.OUT là xâu SG tìm được.\
Ví dụ 1:

  -----------------------------------------------------------------------
  XAUGON.INP                          XAUGON.OUT
  ----------------------------------- -----------------------------------
  Hhooocccsssiiiiinnnhhh              hocsinh

  -----------------------------------------------------------------------

Ví dụ 2:

  -----------------------------------------------------------------------
  XAUGON.INP                          XAUGON.OUT
  ----------------------------------- -----------------------------------
  Aaaaaaabbbbbbbbcccccc               abc

  -----------------------------------------------------------------------

Ví dụ 3:

  -----------------------------------------------------------------------
  XAUGON.INP                          XAUGON.OUT
  ----------------------------------- -----------------------------------
  Abcddddeeeef                        abcdef

  -----------------------------------------------------------------------

Ví dụ 4:

  -----------------------------------------------------------------------
  XAUGON.INP                          XAUGON.OUT
  ----------------------------------- -----------------------------------
  aaaaaa bbbbbbbbbb ccccccc           a b c

  -----------------------------------------------------------------------

Ví dụ 5:

  -----------------------------------------------------------------------
  XAUGON.INP                          XAUGON.OUT
  ----------------------------------- -----------------------------------
  @@@@@ gggggg \$\$\$\$\$\$           @ g \$

  -----------------------------------------------------------------------

Ví dụ 6:

  -----------------------------------------------------------------------
  XAUGON.INP                          XAUGON.OUT
  ----------------------------------- -----------------------------------
  Bgbb cgddd                          Bgb cgd

  -----------------------------------------------------------------------

DAPAN

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
