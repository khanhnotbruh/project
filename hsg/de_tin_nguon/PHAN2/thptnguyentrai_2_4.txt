Họ và tên: Nguyễn Tiến Đạt

Trường THPT Nguyễn Trãi

**Bài 2: Tìm số**

Cho số nguyên dương $x$, khi đảo ngược trật tự các số của $x$ ta sẽ thu
được một số nguyên dương $y.\ $Khi đó, $y$ được gọi là số đảo ngược của
số $x$.

Ví dụ:

-   $x = 123$ thì số đảo ngược của $x$ là $y = 321$

-   $x = 30$ thì số đảo ngược của $x$ là $y = 3$

**Yêu cầu**: Cho hai số nguyên dương $p,q\ (p \leq q)$. Bạn hãy đếm số
lượng số nguyên dương $x\ (p \leq x \leq q)$ sao cho số đảo ngược của
$x$ là số nguyên tố.

**Dữ liệu***:* vào từ file văn bản **BAI2.INP** gồm một dòng duy nhất
chứa hai số nguyên dương $p,q\ (1 \leq p \leq q \leq 10^{7})$

**Kết quả***:* ghi ra file văn bản **BAI2.OUT** một số nguyên duy nhất
là số lượng số nguyên dương $x\ (p \leq x \leq q)$ mà số đảo ngược của
$x$ là số nguyên tố.

**Ví dụ:**

+-------------+--------------+-----------------------------------------+
| *           | **BAI2.OUT** | **Giải thích**                          |
| *BAI2.INP** |              |                                         |
+-------------+--------------+-----------------------------------------+
| 10 13       | 2            | $x = 10 \rightarrow y = 1$,$\ y$ không  |
|             |              | là số nguyên tố                         |
|             |              |                                         |
|             |              | $x = 11 \rightarrow y = 11$,$\ y$ là số |
|             |              | nguyên tố                               |
|             |              |                                         |
|             |              | $x = 12 \rightarrow y = 21$,$\ y$ không |
|             |              | là số nguyên tố                         |
|             |              |                                         |
|             |              | $x = 13 \rightarrow y = 31$,$\ y$ là số |
|             |              | nguyên tố                               |
+-------------+--------------+-----------------------------------------+

**Ràng buộc**: 60% số test tương ứng với 60% số điểm có
$q - p \leq 1000$.
