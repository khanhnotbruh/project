**Nguyễn Thị Vân -- THPT Phan Đăng Lưu**

**Câu 2:** Nhập vào bốn số nguyên, tìm tong cac số chia het co 3 va 5

Tên file: phan2_1.pas\
Dữ liệu vào: phan2_1.inp\
Dữ liệu ra: phan2_1.out

Nhập vào ba số nguyên, tìm số nhỏ nhất

**Dữ liệu:** Nhập bon số nguyên

**Kết quả:** Tong cac so chia het cho 3 va 5.

**Ví dụ:**

+----------------------------------+-----------------------------------+
| phan2_2.inp                      | phan2_2.out                       |
+==================================+===================================+
| 1122                             | 345                               |
|                                  |                                   |
| 302                              |                                   |
|                                  |                                   |
| 345                              |                                   |
|                                  |                                   |
| 456                              |                                   |
+----------------------------------+-----------------------------------+

+-----------------------------------+----------------------------------+
| phan2_2.inp                       | phan2_2.out                      |
+===================================+==================================+
| 15                                | 60                               |
|                                   |                                  |
| 65                                |                                  |
|                                   |                                  |
| 68                                |                                  |
|                                   |                                  |
| 45                                |                                  |
+-----------------------------------+----------------------------------+

Đáp án

Program phan2_1;

Var a,b,c,d,t :Integer;

Begin

Writeln ('Hay nhap a, b, c, d: ');

Readln (a, b, c, d);

T:=0;

If (a mod 5=0) and (a mod 3=0) then t:=t+a;

If (b mod 5=0) and (b mod 3=0) then t:=t+b;

> If (c mod 5=0) and (c mod 3=0) then t:=t+c;

If (d mod 5=0) and (d mod 3=0) then t:=t+d;

Writeln ( 'Tong cac so chia het cho 3 va 5 la: ', t:8);

Readln;

End;
