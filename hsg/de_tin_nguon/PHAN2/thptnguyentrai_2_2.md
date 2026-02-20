Họ và tên: Nguyễn Tiến Đạt

Trường THPT Nguyễn Trãi

**Bài 2. Dãy con**

Cho một dãy A gồm N số nguyên
$A_{1},A_{2},A_{3},\ldots,A\left( \left| A_{i} \right| \leq 1000,\ \ \forall i = 1..N \right)$.Yêu
cầu: Hãy tìm dãy con đan dấu dài nhất, biết rằng dãy con đan dấu là một
dãy gồm một hoặc một số phần tử liên tiếp mà hai phần tử đứng cạnh nhau
sẽ trái dấu nhau.

Ví dụ, cho dãy a: 5, **6, -1, 8, -5, 7**, 6, -2, 7, 6

Dãy con đan dấu có độ dài lớn nhất là: 6, -1, 8, -5, 7 có độ dài 5 (5
phần tử)

**Dữ liệu vào:** Cho trong tệp BAI2.INP

-   Dòng 1: Số nguyên dương N $(1 \leq N \leq 1000)$ là số lượng phần tử
    của dãy số.

-   Dòng 2: Ghi giá trị các phần tử của dãy số. Các phần tử được ghi
    cách nhau bởi ít nhất một dấu cách trống

**Kết quả:** Ghi ra tệp BAI2.OUT:

-   Dòng thứ nhất: Ghi độ dài dãy con (đan dấu) lớn nhất tìm được

-   Dòng thứ 2: ghi ***giá trị các phần tử*** của dãy con đan dấu có độ
    dài lớn nhất các phần tử ghi cách nhau ít nhất một dấu cách trống.
    Trong trường hợp tìm được nhiều dãy con đan dấu có độ dài bằng nhau
    thì ghi giá trị của dãy con đầu tiên tìm được, tính từ trái sang.

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **BAI2.INP**                      | **BAI2.OUT**                      |
+===================================+===================================+
| 10                                | 7                                 |
|                                   |                                   |
| 5 4 -7 8 -6 2 -1 6 9 7            | 4 -7 8 -6 2 -1 6                  |
+-----------------------------------+-----------------------------------+
