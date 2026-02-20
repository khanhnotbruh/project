**Nguyễn Thị Vân -- THPT Phan Đăng Lưu**

**Bài 1:** Viết chương trình nhập hai xâu từ bàn phím và kiểm tra kí tự
đầu tiên của xâu thứ nhất có trùng với kí tự cuối cùng của xâu thứ hai
không.

Tên file: phan1_1.pas\
Dữ liệu vào: phan1_1.inp\
Dữ liệu ra: phan1_1.out

**Dữ liệu:** Nhập 2 xâu bất kì từ bàn phím

**Kết quả:**. kiểm tra kí tự đầu tiên của xâu thứ nhất có trùng với kí
tự cuối cùng của xâu thứ hai không

**Ví dụ:**

+----------------------------------+-----------------------------------+
| phan1_1.inp                      | phan1_1.out                       |
+==================================+===================================+
| Hai Phong toi yeu                | Trung nhau                        |
|                                  |                                   |
| uong nuoc nho nguon              |                                   |
+----------------------------------+-----------------------------------+

+--------------------------------------+-------------------------------+
| phan1_1.inp                          | phan1_1.out                   |
+======================================+===============================+
| Toi yeu Viet Nam                     | Khac nhau                     |
|                                      |                               |
| Viet Nam que toi                     |                               |
+--------------------------------------+-------------------------------+

**Đáp án:**

program phan1_1;

uses crt;

var

a,b:string;

begin

clrscr;

write(\'nhap xau thu nhat:\');

readln(a);

write(\'nhap xau thu hai :\');

readln(b);

if a\[1\]=b\[length(b)\]

then writeln(\'Trung nhau\')

else

writeln(\'Khac nhau\');

readln;

end.
