***Phạm Hải Ninh -- Trường THPT Hồng Bàng***

**CAUHOI**

**Bài 3. Tìm MAX - UCLN**

Cho dãy **A** gồm **N** phần tử nguyên dương
$a_{1},a_{2},a_{3},\ldots,a_{N}$ và dãy B gồm **M** phần tử nguyên dương
$b_{1},b_{2},b_{3},\ldots,b_{M}$

Ký hiệu UCLN(x, y) là ước chung lớn nhất của hai số x và y.

Ví dụ: UCLN(12, 18) = 6.

**Yêu cầu**: Tìm giá trị lớn nhất của $UCLN(a_{i},b_{j})$ với
$i = 1..N;j = 1..M$.

**Ví dụ**: $A = 3,\ \ 5,\ \ 21,\ \ 12,\ \ 6$.
$B = 2,\ \ 4,\ \ 6,\ \ 8,\ \ 14,\ \ 3$

Khi đó $UCLN\left( a_{3},\ b_{5} \right) = UCLN(21,14)\  = \ 7$ đạt giá
trị lớn nhất.

**Dữ liệu vào:** Cho trong tệp BAI3.INP:

-   Dòng 1: Ghi giá trị **N** (số lượng phần tử của dãy A)
    $(1 \leq N \leq 100)$

-   Dòng 2: Ghi N số nguyên dương là các giá trị của dãy A
    $\left( A_{i} \leq 10000,\ \forall i = 1..N \right)$

-   Dòng 3: Ghi giá trị **M** (số lượng phần tử của dãy B)
    $(1 \leq M \leq 100)$

-   Dòng 4: Ghi M số nguyên dương là các giá trị của dãy B
    $\left( B_{j} \leq 10000,\ \forall j = 1..M \right)$

**Kết quả:** Ghi ra tệp BAI3.OUT: Ghi giá trị lớn nhất của
$UCLN(a_{i};b_{j})$ tìm được.

**Ví dụ:**

+-----------------------------------+----------------------------------+
| **BAI3.INP**                      | **BAI3.OUT**                     |
+===================================+==================================+
| 5                                 | 7                                |
|                                   |                                  |
| $$3\ \ 5\ \ 21\ \ 12\ \ 6$$       |                                  |
|                                   |                                  |
| 6                                 |                                  |
|                                   |                                  |
| $2\ \ 4\ \ 6\ \ 8\ \ 14\ \ 3$     |                                  |
+-----------------------------------+----------------------------------+

**\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--**

DAPAN

\- Có 10 test trong đó:

\+ Các test và kết quả các test lưu trên disk.

\+ Đưa ra kết quả đúng: Mỗi test 0,6 điểm.

\+ Nếu chương trình không cho ra kết quả, giám khảo có thể xem lại mã
nguồn và đánh giá bài làm và cho tối đa 2 điểm.

Tùy theo chương trình nguồn, giám khảo có thể thêm test.
