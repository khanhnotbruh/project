# **MUA HÀNG KHUYẾN MẠI (BUYFREE.CPP)**

Có N kiện hàng chất lượng cao, kiện hàng thứ $i$ có kích thước
$A\lbrack i\rbrack$ với $i = 1..N$, và M kiện hàng chất lượng thấp, kiện
hàng thứ $j\ $có kích thước $B\lbrack j\rbrack$ với $j = 1..M$.

Khi mua hàng, HD được khuyến mãi như sau: Nếu mua kiện hàng chất lượng
cao có kích thước A thì được khuyến mãi thêm kiện hàng chất lượng thấp
kích thước B sao cho $1 \leq B < A$.

Hãy giúp HD xem anh ta có thể mua tối đa bao nhiêu kiện hàng biết rằng
HD không được mua kiện hàng chất lượng thấp (chỉ dùng khuyến mại).

**Dữ liệu vào**:

-   Dòng 1: N và M $(1 \leq N \leq 10.000;1 \leq M \leq 10.000)$

-   N dòng tiếp theo, dòng thứ I ghi kích thước hàng chất lượng cao thứ
    I là A\[i\] $(1 \leq A\lbrack i\rbrack \leq 1.000.000)$

-   M dòng tiếp theo, dòng thứ I ghi kích thước hàng chất lượng thấp thứ
    I là B\[i\]

**Kết quả**: Một số duy nhất là số lượng tối đa các kiện hàng mà HD mua
được

**Ví dụ:**

+-----------------------------------+----------------------------------+
| **INPUT**                         | **OUTPUT**                       |
+===================================+==================================+
| 3 4                               | 5                                |
|                                   |                                  |
| 6                                 |                                  |
|                                   |                                  |
| 1                                 |                                  |
|                                   |                                  |
| 3                                 |                                  |
|                                   |                                  |
| 1                                 |                                  |
|                                   |                                  |
| 5                                 |                                  |
|                                   |                                  |
| 3                                 |                                  |
|                                   |                                  |
| 4                                 |                                  |
+-----------------------------------+----------------------------------+
