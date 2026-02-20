# **LÂU ĐÀI CÁT (SANDCAS.CPP)**

Lâu đài cát của HD có N cửa sổ được đánh số từ 1 đến N. Cửa sổ thứ I có
chiều cao $H_{i}$. Nhân dịp tết Giáp Ngọ, HD muốn thay đổi chiều cao của
các cửa sổ thành dãy $B_{1}\ldots B_{N}$ (không nhất định là theo thứ tự
đánh số ban đầu)

Chi phí để nâng cao 1 đơn vị độ cao của sổ là X, chi phí để giám 1 đơn
vị độ cao là Y. Bạn hãy chọn cho HD một hoán vị của tập B sao cho chi
phí là rẻ nhất.

**Dữ liệu:**

-   Dòng 1: N, X, Y ($1 \leq N \leq 25.000$;$\ 1 \leq X,Y \leq 100)$

-   $N$ dòng tiếp theo, dòng thứ i ghi 2 số $H_{i}$ và $B_{i}$
    ${(1 \leq H}_{i};B_{i} \leq 100.000)$

**Kết quả:** Một số duy nhất là chi phí rẻ nhất HD phải trả.

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **INPUT**                         | **OUTPUT**                        |
+===================================+===================================+
| 3 6 5                             | 11                                |
|                                   |                                   |
| 3 1                               | {cửa số 1: 3 2 chi phí 5}         |
|                                   |                                   |
| 1 2                               | {cửa sổ 2: 1 2 chí phí 6}         |
|                                   |                                   |
| 1 2                               | {cửa sổ 3: 1 1}                   |
+-----------------------------------+-----------------------------------+
