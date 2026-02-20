Nguyễn Văn Dũng - THPT An Lão

CAUHOI

**Bài 4. Phân tích số**

Cho dãy gồm n số nguyên a~1~, a~2~, \..., a~n~ và số nguyên M.

**Yêu cầu**: Hãy cho biết có bao nhiêu cách phân tích số M thành tổng
các số trong dãy, biết rằng trong một cách phân tích thì mỗi số a~i~
(i=1..n) được sử dụng không quá một lần.

Ví dụ: Cho dãy số 1, -2, 3, 4, -3 và số nguyên M = 3; khi đó ta tìm được
3 cách phân tích là:

M = 1 - 2 + 4; M = 3 và M = 1 -- 2 + 3 + 4 - 3.

**Dữ liệu:** Vào từ file văn bản PHANTICH.INP gồm 2 dòng:

-   Dòng đầu tiên ghi hai số nguyên n, M (1 ≤ n ≤ 25; \|M\| ≤ 10^3^).

-   Dòng thứ hai ghi n số, số thứ i là a~i~ (\|a~i~\| ≤ 10^3^).

> Các số trên cùng dòng viết cách nhau một dấu cách.

**Kết quả:** Ghi ra file văn bản PHANTICH.OUT số lượng cách phân tích số
M theo yêu cầu. Nếu không có cách phân tích nào thì ghi số 0.

Ví dụ:

+--------------------------------+-------------------------------------+
| PHANTICH.INP                   | PHANTICH.OUT                        |
+================================+=====================================+
| 5 3                            | 3                                   |
|                                |                                     |
| 1 -2 3 4 -3                    |                                     |
+--------------------------------+-------------------------------------+
| 3 -5                           | 0                                   |
|                                |                                     |
| -6 7 -8                        |                                     |
+--------------------------------+-------------------------------------+

*Có ít nhất 50% số test ứng với 50% số điểm của bài có 1 ≤ n ≤ 20.*

DAPAN

**Bài 4 (10 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu**                               |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 4 | 1  | 2   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
| (10   |    |     |                                                 |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+
|       | 2  | 2   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
|       | 3  | 2   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
|       | 4  | 2   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
|       | 5  | 2   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
