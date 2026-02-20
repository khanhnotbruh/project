> **Nguyễn Văn Khoa -- THPT Lý Thường Kiệt**

CAUHOI

Viết chương trình tính tổng hai phân số: ![](media/image1.wmf) +
![](media/image2.wmf).

***Yêu cầu:*** Tổng là phân số đã được rút gọn.

***Dữ liệu vào:*** Đọc dữ liệu các phân số từ tệp văn bản BAI2.INP gồm:

\- Dòng thứ nhất: Ghi hai số nguyên a và b (phân biệt bởi dấu cách) thể
hiện cho phân số a/b.

\- Dòng thứ hai: Ghi hai số nguyên c và d (phân biệt bởi dấu cách) thể
hiện cho phân số c/d .

***Dữ liệu ra:*** Ghi kết quả vào tệp văn bản BAI2.OUT

\- Kết quả ghi tử và mẫu của tổng hai phân số trên cùng 1 dòng, phân
biệt bởi dấu cách. Nếu input có phân số nào có mẫu bằng 0 thì xuất kết
quả ra -1.

***Ví dụ 1:***

+------------------------------+-----+---------------------------------+
| BAI2.INP                     |     | BAI2.OUT                        |
+==============================+=====+=================================+
| 1 2                          |     | 7 6                             |
|                              |     |                                 |
| 2 3                          |     |                                 |
+------------------------------+-----+---------------------------------+

***Ví dụ 2:***

+------------------------------+-----+---------------------------------+
| BAI2.INP                     |     | BAI2.OUT                        |
+==============================+=====+=================================+
| 1 2                          |     | -1                              |
|                              |     |                                 |
| 1 0                          |     |                                 |
+------------------------------+-----+---------------------------------+

**Ví dụ 3:**

+------------------------------+-----+---------------------------------+
| BAI2.INP                     |     | BAI2.OUT                        |
+==============================+=====+=================================+
| 1 3                          |     | 7 12                            |
|                              |     |                                 |
| 1 4                          |     |                                 |
+------------------------------+-----+---------------------------------+

DAPAN

program Tong_phan_so;

var

a, b, c, d, t : qword;

f : text;

function UCLN(m, n: qword) : qword;

var

tam : qword;

begin

while n \<\> 0 do

begin

tam := m mod n;

m:= n;

n:= tam;

end;

UCLN := m;

end;

function BCNN(x, y: qword) : qword;

begin

BCNN := (x \* y) div UCLN(x, y);

end;

begin

assign(f, \'BAI2.INP\'); reset(f);

read(f, a, b, c, d); close(f);

assign(f, \'BAI2.OUT\'); rewrite(f);

if (b = 0) or (d = 0) then

write(f, -1)

else

begin

a := (a \* BCNN(b, d) div b) + (c \* BCNN(b, d) div d);

b := BCNN(b, d);

t := UCLN(a, b);

a := a div t;

b := b div t;

write(f, a, \' \', b);

end;

close(f);

end.
