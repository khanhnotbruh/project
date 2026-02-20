Phạm Minh Hòa - THPT An Lão

CAUHOI

**Bài 4. BỘI SỐ CỦA K**

Cho dãy $n$ số nguyên $a_{1},a_{2},\ldots,\ a_{n}$ và số nguyên dương
$k$. Hãy điền các dấu \'+\', \'-\' vào giữa các số
$\left( a_{1},a_{2} \right),\ \left( a_{2},a_{3} \right),\ldots,(a_{n - 1},a_{n})$
để thu được biểu thức có giá trị là một số nguyên chia hết cho $k.$

Ví dụ: Với dãy số $A = (1,2,3,4,5)$ và $k = 3$ ta có thể có cách điển:

$$1 + 2 - 3 + 4 + 5 = 9$$

Chia hết cho $k = 3$

*Dữ liệu:* Vào từ file văn bản KMULT.INP

-   Dòng đầu ghi hai số nguyên dương $n,\ k\ (n \leq 10^{4},k \leq 100$)

-   Dòng thứ hai ghi $n$ số nguyên
    $a_{1},a_{2},\ldots,\ a_{n}\ \ (\left| a_{i} \right| \leq 10^{4}$)

*Kết quả:* Ghi ra file văn bản KMULT.OUT

-   Dòng đầu ghi 1/0 tùy theo có cách điền/không có cách điền dấu

-   Nếu dòng đầu ghi 1 thì dòng thứ hai ghi $n - 1$ dấu \'+\' hoặc \'-\'
    thể hiện cách điền dấu hợp lệ

*Ví dụ:*

+----------------------------------+-----------------------------------+
| **KMULT.INP**                    | **KMULT.OUT**                     |
+==================================+===================================+
| **5 3**                          | **1**                             |
|                                  |                                   |
| **1 2 3 4 5**                    | **\-\--+**                        |
+----------------------------------+-----------------------------------+

[Ghi chú:]{.underline} Có 50% số test có $n \leq 20$

DAPAN

**Bài 4 (10 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu**                               |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 4 | 1  | 1   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
| (10   |    |     |                                                 |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+
|       | 2  | 1   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
|       | 3  | 1   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
|       | 4  | 1   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
|       | 5  | 1   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
|       | 6  | 1.5 | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
|       | 7  | 1.5 | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
|       | 8  | 2   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
