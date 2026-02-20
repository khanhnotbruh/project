Nguyễn Thị Thanh Thoan-Vinschool Imperia

**Bài 4:** Tại đất nước HP xinh đẹp đang có bất ổn trong vấn đề tỷ giá
ngoại tệ nên anh chàng Hải Phong tranh thủ mua bán ngoại tệ để kiếm lãi.

Biết rằng:

-   Trong $n$ ngày, ngày thứ $i$, giá mua và bán ngoại tệ đều bằng
    $a_{i}$

-   Trong $n$ ngày, Hải Phong chỉ được mua ngoại tệ và bán ngoại tệ đúng
    1 lần.

Bạn hãy cho biết, với b đồng trong tay, Hải Phong có thể có bao nhiều
tiền sau $n$ ngày.

**Dữ liệu:** Vào từ file văn bản **BAI3.INP**

-   Dòng 1 chứa 2 số nguyên $n,b\ (1 \leq n,b \leq 100.000)$ tương ứng
    là số ngày và số tiền mà Hải Phong có.

-   Dòng tiếp theo chứa $n$ số nguyên dương trong đoạn
    $\lbrack 1;2.000\rbrack$, số thứ $i$ là giá mua (cũng là giá bán)
    trong ngày thứ $i$.

*Các số trên một dòng của input file được ghi cách nhau bởi dấu cách.*

**Kết quả:** Ghi ra file văn bản **BAI3.OUT**

-   Ghi một số nguyên duy nhất là số tiền lớn nhất mà Hải Phong có thể
    có sau $n$ ngày.

**Ví dụ:**

+---------------+---------------+-------------------------------------+
| **BAI3.INP**  | **BAI3.OUT**  | **Giải thích**                      |
+===============+===============+=====================================+
| 2 4           | 8             | Hải Phong mua ngày 1, bán ngày 2    |
|               |               |                                     |
| 3 7           |               |                                     |
+---------------+---------------+-------------------------------------+
| 4 10          | 10            | Hải Phong không mua bán gì          |
|               |               |                                     |
| 4 3 2 1       |               |                                     |
+---------------+---------------+-------------------------------------+
| 4 10          | 15            | Hải Phong mua ngày 2, bán ngày 3    |
|               |               |                                     |
| 4 2 3 1       |               |                                     |
+---------------+---------------+-------------------------------------+

**Chú ý:**

-   *60% số điểm ứng với các test có* $N \leq 2.000.$
