VŨ THỊ HẰNG_THPT AN DƯƠNG

**CÂU HỎI**

# **PHÁ VỠ KỶ LỤC (BREAKING.\*)**

Hải chơi $n$ game bóng rổ, sau mỗi lần chơi, số điểm Hải được ghi lại
thành một dãy số $s_{0},s_{1},\ s_{2},\ s_{3},\ldots s_{n - 1}$. Sau
game thứ $i$, Hải sẽ kiểm tra xem anh ấy có phá vỡ kỷ lục điểm cao nhất
hoặc chìm sâu hơn kỷ lục điểm thấp nhất.

**Yêu cầu:** Đếm số lần phá kỷ lục cao điểm nhất và số lần phá kỷ lục
điểm thấp nhất của Hải?

**Dữ liệu vào**:

-   Dòng 1: số nguyên dương $n\ (1 \leq n \leq 1000)$ là số lượng game
    Hải đã chơi

-   Dòng tiếp theo chứa $n$ số nguyên
    $s_{0},s_{1},\ s_{2},\ s_{3},\ldots s_{n - 1}$ số điểm của Hải
    $\ (0 \leq s_{i} \leq 10^{8})$

**Kết quả**: Ghi hai số nguyên theo thứ tự là số lần phá kỷ lục cao điểm
nhất và số lần phá kỷ lục điểm thấp nhất.

**Ví dụ:**

+-----------------------------------+----------------------------------+
| **BREAKING.INP**                  | **BREAKING.OUT**                 |
+===================================+==================================+
| 9                                 | 2 4                              |
|                                   |                                  |
| 10 5 20 20 4 5 2 25 1             |                                  |
+-----------------------------------+----------------------------------+
| 10                                | 4 0                              |
|                                   |                                  |
| 3 4 21 36 10 28 35 5 24 42        |                                  |
+-----------------------------------+----------------------------------+

> \- $\frac{2}{7}$ *số điểm ứng với các*
> $\ (n \leq 10\ ;(0 \leq s_{i} \leq 10^{3})$
>
> \- $\frac{2}{7}$ *số điểm ứng với các*
> $\ (n \leq 1000\ ;(0 \leq s_{i} \leq 10^{6})$
>
> \- $\frac{1}{7}$ *số điểm ứng với các*
> $\ (n \leq 1000\ ;(0 \leq s_{i} \leq 10^{8})$
