# **WATERFILL.CPP** 

Cho $N$ thùng nước đặt liên tiếp nhau, được đánh số từ 1 đến $N$. Mỗi
thùng có dung tích là $A_{i}$ lít. Tại mỗi thùng đều có một vòi nước
chảy với lưu lựng giống nhau là $K$ lít/giây. Khi thùng thứ $i$ đầy nước
$(1 \leq i < N)$ thì nước từ vòi tại thùng $i$ sẽ chảy qua thùng
$i + 1$. Khi thùng thứ $N$ đấy nước thì nước sẽ chảy ra ngoài.

**Yêu cầu:**

-   Tìm số nguyên tương ứng với thời gian sớm nhất để thùng thứ $N$ đầy
    nước

-   Tìm số nguyên tương ứng với thời gian sớm nhất để tất cả các thùng
    đầy nước.

Lưu ý: chỉ cần tìm thời gian nguyên sơm nhất (ví dụ thời gian tìm được
là $1.33$ thì kết quả in ra sẽ là 2)

**Dữ liệu**:

-   Dòng 1: Số nguyên dương $n,k\ (n \leq 100\ 000;K \leq 10^{9})$

-   Dòng 2: $n$ số nguyên dương
    $a_{1},a_{2},\ldots,a_{n}\ (1 \leq a_{i} \leq 10^{9},\ 1 \leq i \leq n)$

**Kết quả**: in ra hai số nguyên không âm lần lượt là thời gian sớm nhất
để thùng thứ $N$ đầy nước và thời gian sớm nhất để tất cả các thùng đầy
nước. (2 số ngăn cách nhau bởi khoảng trống)

**Ví dụ**:

+----------------------+----------------------+-----------------------+
| **INPUT**            | **OUTPUT**           | **Giải thích**        |
+======================+======================+=======================+
| 4 2                  | 2 2                  | Hai kết quả là 1.25   |
|                      |                      | và 1.25               |
| 1 2 3 4              |                      |                       |
+----------------------+----------------------+-----------------------+
| 4 3                  | 1 4                  | Hai kết quả là 0.6667 |
|                      |                      | và 3.3333             |
| 10 7 3 2             |                      |                       |
+----------------------+----------------------+-----------------------+
