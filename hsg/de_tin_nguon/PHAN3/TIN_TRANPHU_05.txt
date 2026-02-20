# **XẾP GẠCH (XEPGACH.CPP)**

Cho $n$ viên gạch, viên gạch thứ $i$ có hai thông số đi kèm là
$a_{i},b_{i}$. Nếu ta xếp viên gạch thứ $i$ vào vị trí $j$ thì độ xấu
của nó sẽ được tính theo công thức:

$$a_{i} \times (j - 1) + b_{i} \times (n - j)$$

Mỗi hoán vị của $n$ viên gạch là một cách để sắp xếp các viên gạch với
nhau. Bạn hãy tìm cách sắp xếp sao cho tổng độ xấu của các viên gạch là
nhỏ nhất khi sắp xếp các viên gạch.

**Dữ liệu vào**

-   Dòng đầu tiên là số nguyên dương N $(1 \leq N \leq 10^{5})$;

-   N dòng sau, mỗi dòng gồm hai số
    $a_{i},b_{i}\ (1 \leq a_{i},b_{i} \leq 10^{8})$.

**Kết quả**: Ghi ra số nguyên duy nhất là độ xấu nhỏ nhất.

**Ví dụ**

+-----------------+-----------------+----------------------------------+
| **INPUT**       | **OUTPUT**      | **Giải thích**                   |
+=================+=================+==================================+
| 4               | 25              | Thứ tự sắp xếp: 3, 2, 4, 1       |
|                 |                 |                                  |
| 2 4             |                 |                                  |
|                 |                 |                                  |
| 3 3             |                 |                                  |
|                 |                 |                                  |
| 7 1             |                 |                                  |
|                 |                 |                                  |
| 2 3             |                 |                                  |
+-----------------+-----------------+----------------------------------+
