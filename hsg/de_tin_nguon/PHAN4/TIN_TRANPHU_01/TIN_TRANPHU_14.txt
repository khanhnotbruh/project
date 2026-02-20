# **DÃN CÁCH XÃ HỘI (MARKET.CPP)**

Dọc theo con đường hội chợ (để dễ hình dung có thể mô tả chúng như trục
tọa độ) có $N$ gian hàng được dựng sẵn ở các vị trí
$x_{1},\ x_{2},\ \ldots,\ x_{N}$. Có $C$ người đăng ký bán hàng trong
hội chợ. Do đang phòng chống dịch COVID-19 nên Ban tổ chức hội chợ quyết
định bố trí $C$ người bán hàng, mỗi người ở một gian hàng trong số $N$
gian hàng nói trên) sao cho khoảng cách nhỏ nhất giữa hai gian hàng bất
kỳ trong số $C$ gian hàng được lựa chọn là lớn nhất có thể. Viết chương
trình thực hiện điều này. Ở đây khoảng cách giữa gian hàng có tọa độ $x$
và gian hàng có tọa độ $y$ được định nghĩa là $|x - y|$

**Dữ liệu vào:**

-   Dòng đầu tiên chứa hai số nguyên dương
    $N,\ C\ (2 \leq C \leq N \leq 100000)$ cách nhau một dấu trống

-   Tiếp theo là $N$ dòng, dòng thứ $i\ (1 \leq i \leq N)$ chúa số
    nguyên $x_{i}$ - vị trí của gian hàng thứ $i$
    ($0 \leq x_{i} \leq 10^{9})$

**Kết quả:** Ghi ra một số nguyên duy nhất là đáp án.

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **INPUT**                         | **OUTPUT**                        |
+===================================+===================================+
| 5 3                               | 3                                 |
|                                   |                                   |
| 1                                 |                                   |
|                                   |                                   |
| 2                                 |                                   |
|                                   |                                   |
| 8                                 |                                   |
|                                   |                                   |
| 4                                 |                                   |
|                                   |                                   |
| 9                                 |                                   |
+-----------------------------------+-----------------------------------+
