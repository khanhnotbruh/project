# **CHIA KẸO (KSEQ1.CPP)**

Bill Gates có một trong những chuyến đi từ thiện của mình đến một ngôi
làng ở Utopia. Ông có N gói kẹo và muốn phân phối một gói cho mỗi trẻ em
trong K làng (mỗi gói có thể chứa số lượng khác nhau của các loại bánh
kẹo). Để tránh một cuộc cãi nhau giữa các đứa trẻ, ông muốn chọn K trong
N gói sao cho độ bất công được tối thiểu.

Giả sử K gói có (x1, x2, x3, \.... xk) kẹo trong các gọi, với xi là số
kẹo trong gói thứ i, cách xác định là bất công là

$Max\left( x_{1},x_{2},\ldots,x_{k} \right) - Min\left( x_{1},x_{2},\ldots,x_{k} \right)$

**Dữ liệu vào**

-   Dòng đầu tiên là số nguyên dương N $(2 \leq N \leq 10^{5})$.

```{=html}
<!-- -->
```
-   Dòng thứ 2 là số nguyên dương K $(2 \leq K \leq N).$

-   N dòng sau là số kẹo trong N gói. Số kẹo
    $\in \lbrack 0;10^{9}\rbrack$

**Kết quả**: Ghi ra số nguyên duy nhất là kết quả của bài toán.

**Ví dụ**

+--------------+--------------+--------+--------------+--------------+
| **INPUT**    | **OUTPUT**   |        | **INPUT**    | **OUTPUT**   |
+==============+==============+========+==============+==============+
| 7            | 20           |        | 10           | 3            |
|              |              |        |              |              |
| 3            |              |        | 4            |              |
|              |              |        |              |              |
| 10           |              |        | 1            |              |
|              |              |        |              |              |
| 100          |              |        | 2            |              |
|              |              |        |              |              |
| 300          |              |        | 3            |              |
|              |              |        |              |              |
| 200          |              |        | 4            |              |
|              |              |        |              |              |
| 1000         |              |        | 10           |              |
|              |              |        |              |              |
| 20           |              |        | 20           |              |
|              |              |        |              |              |
| 30           |              |        | 30           |              |
|              |              |        |              |              |
|              |              |        | 40           |              |
|              |              |        |              |              |
|              |              |        | 100          |              |
|              |              |        |              |              |
|              |              |        | 200          |              |
+--------------+--------------+--------+--------------+--------------+
