TRẦN THỊ VÂN OANH_THPT LÊ CHÂN

**Câu hỏi**:

Đếm số nguyên tố (nguyento.\*)

Bạn được cho biết số $N$ và dãy
$A = \left( a_{1},a_{2},\ldots,a_{N} \right)$. Để tránh việc phải đọc
một lượng dữ liệu quá lớn, dãy $A$ sẽ được cho bởi ba số nguyên dương
$p,q,m$, trong đó mỗi phần tử $a_{i}$ được xác định theo công thức:

$$a_{i} = (p*i)\text{ mod }m + q\text{ }(\forall i:1 \leq i \leq N)$$

Có T câu hỏi dạng $u,v\ (u \leq v)$ yêu cầu cho biết trong đoạn
$a_{u},a_{u + 1},\ldots,a_{v}$ có bao nhiêu số nguyên tố?

**Dữ liệu:**

-   Dòng 1: Chứa hai số nguyên dương $N,\ T$

-   Dòng 2: Dòng 2 chứa ba số nguyên dương $p,q,m$ xác định dãy $A$
    ($p,q,m \leq 10^{6}$)

-   T dòng tiếp theo, dòng thứ $i$ chứa 2 số $u,v$ tương ứng với câu hỏi
    $i$ là trong đoạn $a_{u},a_{u + 1},\ldots,a_{v}$ có bao nhiêu số
    nguyên tố.

**Kết quả:** Ghi trên T dòng, dòng thứ $i$ ghi câu trả lời cho câu
hỏi$\ i$.

**Ví dụ:**

+-----------------+----------------+-----------------------------------+
| *               | **             | Giải thích                        |
| *NGUYENTO.INP** | NGUYENTO.OUT** |                                   |
+=================+================+===================================+
| 5 4             | 3              | Dãy $A = (3,\ 5,\ 7,\ 9,\ 2)$.    |
|                 |                |                                   |
| 2 1 9           | 2              | Đoạn \[1,3\] là $(3,\ 5,\ 7)$ có  |
|                 |                | 3 số nguyên tố                    |
| 1 3             | 2              |                                   |
|                 |                | Đoạn \[2,4\] là $(5,\ 7,\ 9)$ có  |
| 2 4             | 0              | 2 số nguyên tố                    |
|                 |                |                                   |
| 3 5             |                | Đoạn \[3,5\] là $(7,\ 9,\ 2)$ có  |
|                 |                | 2 số nguyên tố                    |
| 4 4             |                |                                   |
|                 |                | Đoạn \[4,4\] là $(9)$ có 0 số     |
|                 |                | nguyên tố                         |
+-----------------+----------------+-----------------------------------+

**Chú ý:**

-   *40% số điểm ứng với các test có* $N \leq 1.000,T = 1$

-   *40% số điểm ứng với các test có* $N \leq 1.000,\ T \leq 1.000$

-   *20% số điểm ứng với các test có* $N \leq 1.000,T \leq 10.000$
