Họ và tên: Nguyễn Tiến Đạt

Trường THPT Nguyễn Trãi

**Bài 3: Cặp số chia hết cho 3**

Với hai số nguyên dương $u,v$, khi viết số $v$ sau số $u$ ta được một số
mới.

Ví dụ: $u = 99,v = 123$, khi viết số $v$ sau số $u$, ta được số mới là
số $99123$

Cho $n$ số nguyên dương $a_{1},a_{2},\ldots,a_{n}$ và $m$ số nguyên
dương $b_{1},b_{2},\ldots,b_{m}$. Với mỗi giá trị
$b_{i}\ (1 \leq i \leq m)$, bạn hãy cho biết có bao nhiêu số
$a_{j}(1 \leq j \leq n)$ sao cho khi viết $a_{j}$ sau $b_{i}$ được một
số mới chia hết cho 3?

**Dữ liệu:** vào từ file văn bản **BAI3.INP**

-   Dòng đầu chứa hai số nguyên dương $n,m\ (1 \leq n,m \leq 100000)$

-   Dòng tiếp theo chứa $n$ số nguyên dương
    $a_{1},a_{2},\ldots,a_{n}\ (a_{i} \leq 10^{8},\ 1 \leq i \leq n)$

-   Dòng tiếp theo chứa $m$ số nguyên dương
    $b_{1},b_{2},\ldots,b_{m}(b_{i} \leq 10^{8},\ 1 \leq i \leq m)$.

**Kết quả:** ghi ra file văn bản **BAI3.OUT** trên $m$ dòng, dòng thứ
$i$ ghi số lượng số $a_{j}(1 \leq j \leq n)$ sao cho khi viết $a_{j}$
sau $b_{i}$ được một số mới chia hết cho 3.

**Ví dụ:**

+-------------+-------------+------------------------------------------+
| *           | *           | **Giải thích**                           |
| *BAI3.INP** | *BAI3.OUT** |                                          |
+-------------+-------------+------------------------------------------+
| 5 2         | 1           | $b_{1} = 3$, có duy nhất một số $a_{1}$  |
|             |             | khi viết sau $b_{1}$ tạo thành các số    |
| 123 4 5 7   | 3           | 3123 chia hết cho 3.                     |
| 10          |             |                                          |
|             |             | $b_{2} = 2$, có ba số                    |
| 3 2         |             | $a_{2},a_{4},a_{5}$ khi viết sau $b_{2}$ |
|             |             | tạo thành các số 24, 27, 210 chia hết    |
|             |             | cho 3.                                   |
+-------------+-------------+------------------------------------------+

**Ràng buộc:** 60% số test tương ứng với 60% số điểm có
$1 \leq n,m \leq 1000.$
