# **LỄ HỘI HALLOWEEN (COSTUME.CPP)**

HD chuẩn bị tổ chức HALLOWEEN cho các bạn cùng học mẫu giáo với mình,
nhưng rất tiếc, HD chỉ có 1 bộ trang phục hóa trang có chiều rộng là S.
Bộ trang phục hóa trang này sẽ được mặc bởi đúng 2 người bạn nếu tổng
chiều rộng của 2 người không vượt quá chiều rộng S. Biết chiều rộng của
N người bạn của HD, bạn hãy xác định có bao nhiêu cặp đôi sẽ mặc vừa bộ
trang phục hóa trang.

**Dữ liệu:**

-   Dòng 1: N và S $(1 \leq S \leq 1.000.000;2 \leq N \leq 20.000$)

-   N dòng tiếp theo, dòng thứ I là chiều rộng của người bạn I
    $(1 \leq L_{i} \leq 1.000.000)$

**Kết quả:** Một số duy nhất là số lượng cặp có thể mặc vừa bộ trang
phục hóa trang.

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **INPUT**                         | **OUTPUT**                        |
+===================================+===================================+
| 4 6                               | 4                                 |
|                                   |                                   |
| 3                                 |                                   |
|                                   |                                   |
| 5                                 |                                   |
|                                   |                                   |
| 2                                 |                                   |
|                                   |                                   |
| 1                                 |                                   |
+-----------------------------------+-----------------------------------+

***Giải thích***: Có 4 cặp như sau:
$\left\{ 1;3 \right\}\left\{ 1;4 \right\}\left\{ 2;4 \right\}\{ 3;4\}$
