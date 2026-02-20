**ĐỖ THỊ TIẾN_THPT NAM TRIỆU**

**Câu hỏi**

Bạn Minh tập sút Penalty, sau mỗi lần chơi, số điểm Minh được ghi lại
thành một dãy số $s_{0},s_{1},\ s_{2},\ s_{3},\ldots s_{n - 1}$. Sau
lượt thứ $i$, Minh sẽ kiểm tra xem bạn ấy có phá vỡ kỷ lục điểm cao nhất
hoặc thấp hơn kỷ lục điểm thấp nhất.

**Yêu cầu:** Đếm số lần phá kỷ lục cao điểm nhất và số lần phá kỷ lục
điểm thấp nhất của Minh?

**Dữ liệu vào**:

-   Dòng 1: số nguyên dương $n\ (1 \leq n \leq 1000)$ là số lượt Minh đã
    chơi

-   Dòng tiếp theo chứa $n$ số nguyên
    $s_{0},s_{1},\ s_{2},\ s_{3},\ldots s_{n - 1}$ số điểm của A
    $\ (0 \leq s_{i} \leq 10^{8})$

**Kết quả**: Ghi hai số nguyên theo thứ tự là số lần phá kỷ lục cao điểm
nhất và số lần phá kỷ lục điểm thấp nhất.

**Ví dụ:**

+-----------------------------------+----------------------------------+
| **PENALTY.INP**                   | **PENALTY.OUT**                  |
+===================================+==================================+
| 8                                 | 2 4                              |
|                                   |                                  |
| 10 5 20 20 4 5 2 25 1             |                                  |
+-----------------------------------+----------------------------------+
| 9                                 | 4 0                              |
|                                   |                                  |
| 3 4 21 36 10 28 35 5 24 42        |                                  |
+-----------------------------------+----------------------------------+
