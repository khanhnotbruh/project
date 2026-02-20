**Nguyễn Thị Vân -- THPT Phan Đăng Lưu**

**Câu 3:** Cho mảng A gồm N phần tử thuộc kiểu nguyên (N≤50). Viết
chương trình con thực hiện yêu cầu sau: Viết thủ tục in ra màn hình các
phần tử âm trong mảng A.

Tên file: phan3_1.pas\
Dữ liệu vào: phan3_1.inp\
Dữ liệu ra: phan3_1.out

**Dữ liệu:** Nhập mảng A gồm N phần tử thuộc kiểu nguyên (N≤50)

**Kết quả:** in ra màn hình các phần tử âm trong mảng A

**Ví dụ:**

+----------------------------------+-----------------------------------+
| prime.inp                        | prime.out                         |
+==================================+===================================+
| 25                               | -5                                |
|                                  |                                   |
| 10                               | -4                                |
|                                  |                                   |
| 35                               |                                   |
|                                  |                                   |
| -5                               |                                   |
|                                  |                                   |
| 5                                |                                   |
|                                  |                                   |
| -4                               |                                   |
+----------------------------------+-----------------------------------+

+-----------------------------------+----------------------------------+
| prime.inp                         | prime.out                        |
+===================================+==================================+
| 24                                | -3                               |
|                                   |                                  |
| -3                                | -8                               |
|                                   |                                  |
| 18                                | -1                               |
|                                   |                                  |
| 48                                |                                  |
|                                   |                                  |
| -8                                |                                  |
|                                   |                                  |
| -1                                |                                  |
+-----------------------------------+----------------------------------+

**Đáp án**

**Program Phan3_1;**

> **Type kmang=array\[1..255\] of integer;**
>
> **Var A:kmang;**
>
> **i, n: integer;**

**begin**

write('Nhap so phan tu cua mang N=');

readln(n);

**for** i:=1 **to** n **do**

**begin**

write('Nhap phan tu thu A\[',i,'\]=');

readln(A\[i\]);

**end;**

**for** i := 1 **to** n **do**

**if** A\[i\] \< 0 **then** write(A\[i\],' ');

**readln;**

**end.**
