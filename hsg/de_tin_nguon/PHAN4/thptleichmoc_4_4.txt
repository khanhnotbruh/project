Nguyễn Văn Tài - THPT Lê ích Mộc

CAUHOI

Dãy con chẵn liên tục dài nhất

Cho một dãy A gồm N phần tử (0\<N\<=1000) từ tệp

**Yêu cầu:** Tìm dãy con chẵn liên tục có độ dài lớn nhất

**[Dữ liệu vào]{.underline}**: từ tệp Lim9.INP gồm N phần tử nguyên
dương

**[Kết quả ra]{.underline}**: Lưu tại tệp Lim9.OUT

\- Dòng đầu tên ghi độ dài

Ví dụ:

+------------------------------+--------------+-----------------------+
| Lim9.INP                     | Lim9.OUT     | Giải thích            |
+==============================+==============+=======================+
| 12 23 **32 22 44** 21 **66   | 3            | \- Số phần tử của dãy |
| 88**                         |              | con                   |
|                              | Khong        |                       |
|                              |              | \- Nếu không có dãy   |
|                              |              | con ghi không tồn tại |
+------------------------------+--------------+-----------------------+

DAPAN

const

fi=\'lim9.inp\';

fo=\'lim9.out\';

var

f1,f2:text;

a:array\[1..1000\] of integer;

n,i,t,sl,cs:integer;

begin

assign(f1,fi);

assign(f2,fo);

reset(f1);

rewrite(f2);

n:=0;

sl:=0;

t:=0;

while not eof(f1) do

begin

inc(n);

read(f1,a\[n\]);

end;

a\[n+1\]:=1;

for i:=1 to n do

if a\[i\] mod 2=0 then

inc(t)

else

begin

if t\>sl then

sl:=t;

t:=0;

end;

if sl\>1 then

write(f2,sl)

else

write(f2,\'khong\');

close(f1);

close(f2);

end.
