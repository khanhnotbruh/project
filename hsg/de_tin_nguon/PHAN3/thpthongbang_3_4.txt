***Phạm Hải Ninh -- Trường THPT Hồng Bàng***

**CAUHOI**

**Bài 3:** Cho một mảng gồm $n$ số nguyên dương
$a_{1},a_{2},\ldots,a_{n}(1 \leq a_{i} \leq 20.000,\ i = \overline{1;n})$
đôi một khác nhau. Phần tử $a_{t}\ (1 \leq t \leq n)$ được gọi là phần
tử trung bình cộng nếu tồn tại ít nhất một cặp chỉ số
$i,j\ (1 \leq i < j \leq n)$ sao cho:

$$a_{t} = \frac{a_{i} + a_{j}}{2}$$

**Yêu cầu**: Bạn hãy đếm số lượng phần tử trung bình cộng trong mảng ban
đầu.

**Dữ liệu:** vào từ file văn bản **BAI3.INP**

-   Dòng 1: chứa số nguyên dương $n\ (3 \leq n \leq 5.000)$ là số phần
    tử của mảng.

-   Dòng tiếp theo chứa $n$ số nguyên dương
    $a_{1},a_{2},\ldots,a_{n}\ (a_{i} \neq a_{j},\ \forall i \neq j)$.

*Các số nguyên trong file dữ liệu được ghi cách nhau ít nhất 1 dấu cách
trống.*

**Kết quả:** ghi ra file văn bản **BAI3.OUT** một số nguyên duy nhất là
số lượng phần tử trung bình cộng.

**Ví dụ:**

+-------------+-------------+------------------------------------------+
| *           | *           | **Giải thích**                           |
| *BAI3.INP** | *BAI3.OUT** |                                          |
+-------------+-------------+------------------------------------------+
| 4           | 2           | Có 2 phần tử trung bình cộng             |
|             |             |                                          |
| 1 2 3 4     |             | -   $                                    |
|             |             | t = 2,\ a_{2} = \frac{a_{1} + a_{3}}{2}$ |
|             |             |                                          |
|             |             | -   $                                    |
|             |             | t = 3,\ a_{3} = \frac{a_{2} + a_{4}}{2}$ |
+-------------+-------------+------------------------------------------+
| 5           | 3           | Có 3 phần tử trung bình cộng             |
|             |             |                                          |
| 2 10 6 8 14 |             | -   $                                    |
|             |             | t = 2,\ a_{2} = \frac{a_{3} + a_{5}}{2}$ |
|             |             |                                          |
|             |             | -   $                                    |
|             |             | t = 3,\ a_{3} = \frac{a_{1} + a_{2}}{2}$ |
|             |             |                                          |
|             |             | -   $t = 4,\ a_{4} = \frac{a_{2          |
|             |             | } + a_{3}}{2} = \frac{a_{1} + a_{5}}{2}$ |
+-------------+-------------+------------------------------------------+

**Chú ý:** 60% số test tương ứng với 60% số điểm có $n \leq 100.$

DAPAN

\- Có 10 test trong đó:

\+ Các test và kết quả các test lưu trên disk.

\+ Đưa ra kết quả đúng: Mỗi test 0,6 điểm.

\+ Nếu chương trình không cho ra kết quả, giám khảo có thể xem lại mã
nguồn và đánh giá bài làm và cho tối đa 2 điểm.

Tùy theo chương trình nguồn, giám khảo có thể thêm test.
