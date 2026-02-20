**BÀI 2: LỚP CÁC ƯỚC SỐ**

Gọi $S(x)$ là số lượng ước số của số nguyên dương $x$.

Hai số nguyên dương $x$ và $y$ được gọi là hai số có cùng lớp $k$ nếu
$S(x) = S(y) = k.$

**Ví dụ**:

-   $S(6) = 4,$ gồm các ước $\{ 1,2,3,6\}$

```{=html}
<!-- -->
```
-   $S(8) = 4,$ gồm các ước $\{ 1,2,4,8\}$

Như vậy $6$ và $8$ là hai số thuộc lớp 4 vì $S(6) = S(8) = 4.$

**Yêu cầu**: Cho dãy $n\ $số nguyên dương $a_{1},a_{2},\ldots,a_{n}$.
Bạn hãy cho biết dãy số đã cho có bao nhiêu lớp khác nhau?

**Dữ liệu:** Vào từ file văn bản **bai4.inp**

-   Dòng 1 chứa số nguyên dương $n\ (1 \leq n \leq 1\ 000\ 000)$;

-   Dòng tiếp theo chứa $n$ nguyên dương
    $a_{1},a_{2},\ldots,a_{n}\left( 1 \leq a_{i} \leq 10^{6},\ \ \forall i = 1..n \right)$

**Kết quả:** Ghi ra file văn bản **bai4.out** một số nguyên duy nhất là
số lượng các lớp khác nhau của dãy số đã cho.

**Ví dụ:**

+-------------+---------------+----------------------------------------+
| *           | **Bai4.out**  | **Giải thích**                         |
| *Bai4.inp** |               |                                        |
+=============+===============+========================================+
| 5           | 2             | -   $\{ 6,\ 8\}$ thuộc lớp 4           |
|             |               |                                        |
| 6 2 13 7 8  |               | -   $\{ 2,\ 13,\ 7\}$ thuộc lớp 2      |
+-------------+---------------+----------------------------------------+
