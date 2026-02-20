**Bùi Thị Huệ_THPT Phạm Ngũ Lão**

**CAUHOI**

**Bài 4: Đếm loại kí tự (*8 điểm*)**

Một công ty sản xuất bàn phím máy tính cần biết tần suất của mỗi chữ cái
tiếng Anh xuất hiện trong các văn bản, để từ đó làm căn cứ sắp xếp vị
trí các phím cho phù hợp với người dùng trong một mẫu bàn phím mới.

> ***Yêu cầu:*** Viết chương trình thống kê số lần xuất hiện của mỗi chữ
> cái tiếng Anh (không phân biệt chữ hoa hay chữ thường) được sắp xếp
> theo thứ tự xuất hiện giảm dần, nếu các kí tự có cùng số lần xuất hiện
> thì ưu tiên theo thứ tự từ điển.
>
> ***Dữ liệu vào:*** Đọc từ tệp văn bản BAI4.INP (dung lượng không quá
> 2GB) có 1 dòng duy nhất chứa thông tin của các dữ liệu cần xử lý.
>
> ***Dữ liệu ra:*** Ghi kết quả vào tệp văn bản BAI4.OUT, mỗi dòng ghi
> kí tự (in hoa) và số lần xuất hiện (phân biệt bởi dấu cách) theo thứ
> tự giảm dần.
>
> **Ví du:**

+--------------------------------------+-------------------------------+
| Bai_4.INP                            | Bai_4.OUT                     |
+======================================+===============================+
| THPT PNL                             | P 2                           |
|                                      |                               |
|                                      | T 2                           |
|                                      |                               |
|                                      | H 1                           |
|                                      |                               |
|                                      | L 1                           |
|                                      |                               |
|                                      | N 1                           |
+--------------------------------------+-------------------------------+

ĐÁP ÁN

Program Dem_ki_tu;

var

kitu : array\[\'A\'..\'Z\'\] of qword;

tt : array\[1..24\] of char;

i, sokt :qword;

t, d, c: byte;

kt: char;

s: ansistring;

f_in, f_out: text;

begin

assign(f_in,\'Bai4.inp\');

reset(f_in);

assign(f_out, \'Bai4.out\');

rewrite(f_out);

readln(f_in, s);

close(f_in);

fillchar(kitu, sizeof(kitu),0);

i:= 1;

sokt := length(s);

while i \<= sokt do

begin

kt := upcase(s\[i\]);

if (kt \>= \'A\') and (kt \<= \'Z\') then

inc(kitu\[kt\]);

inc(i);

end;

for t:= 1 to 24 do

tt\[t\]:= chr(t+64);

for c:= 24 downto 2 do

for d:= 1 to c-1 do

if kitu\[tt\[d\]\] \< kitu\[tt\[d+1\]\] then

begin

kt:= tt\[d\];

tt\[d\]:= tt\[d+1\];

tt\[d+1\]:= kt;

end;

for t:= 1 to 24 do

if kitu\[tt\[t\]\] \>0 then

writeln(f_out, tt\[t\], \' \', kitu\[tt\[t\]\]);

close(f_out);

end.
