# **DÃY SỐ (SEQ.CPP)**

Cho một dãy gồm 𝑛 số nguyên $A = (a_{1},a_{2},\ldots,a_{n})$ và một số
nguyên $k$.

Hãy xác định xem trong dãy 𝐴 có tồn tại hai phần tử $a_{p},a_{q}$ ở hai
vị trí khác nhau $p\  \neq \ q$ mà $a_{p} - a_{q} = k$ hay không.

**Dữ liệu vào:**

-   Dòng 1: Chứa hai số nguyên 𝑛 và
    $k\ (2\  \leq n \leq 10^{5},|k|\  \leq \ {2.10}^{9})$

-   Dòng 2: Chứa 𝑛 số nguyên
    $a_{1},a_{2},\ldots,a_{n}\ (\forall i:|a_{i}|\  \leq \ {2.10}^{9})\ $

**Kết quả:** Ghi ra hai chỉ số $p,q$ tìm được. Nếu không tồn tại cặp số
thỏa mãn yêu cầu, ghi ra hai số 0

*Các số trên một dòng của Input/Output files được/phải ghi cách nhau ít
nhất một dấu cách*

**Ví dụ:**

+----------------------------------+-----------------------------------+
| **INPUT**                        | **OUTPUT**                        |
+==================================+===================================+
| 7 88                             | 7 1                               |
|                                  |                                   |
| 11 33 55 99 33 77 99             |                                   |
+----------------------------------+-----------------------------------+
