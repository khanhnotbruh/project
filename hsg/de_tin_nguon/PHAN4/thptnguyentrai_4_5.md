Họ và tên: Nguyễn Tiến Đạt

Trường THPT Nguyễn Trãi

**BÀI 4. SỐ HOÀN HẢO**

Bé Huy rất thích tìm hiểu về các số đặc biệt, hôm trước trong giờ học
lập trình thầy giáo dạy cho bé về số hoàn hảo (số hoàn hảo là số có tổng
các ước (không kể nó) bằng chính nó, ví dụ số $6$ là số hoàn hảo vì
$6 = 1 + 2 + 3$), bé cảm thấy hứng thú với con số này. Về nhà bé nghĩ ra
khá nhiều bài toán xử lí số hoàn hảo. Nhưng hôm nay, thầy cho bé một bài
tập rất hóc búa, nghĩ mãi không ra cách làm tốt nhất để được tối đa điểm
của bài, nên bé nhờ các bạn học sinh giỏi làm giúp. Bài toán như sau:

Cho dãy $a_{1},a_{2},\ldots,a_{n}\ $, ban đầu tất cả các phần tử có giá
trị bằng 0. Có $m\ $ phép biến đổi dạng $(u,v,k)$: tăng giá trị các phần
tử từ vị trí $u\ $ đến vị trí $v$ lên $k$ đơn vị. Dữ liệu đảm bảo sau
$m$ phép biến đổi $0 < a_{i} \leq 10^{6}\ (\forall i = 1..n)$ và có ít
nhất một số hoàn hảo trong dãy. Với dãy $a_{1},a_{2},\ldots,a_{n}\ $ sau
$m$ phép biến đổi, thầy yêu cầu đưa ra vị trí các số hoàn hảo theo thứ
tự tăng dần.

**Dữ liệu:** Vào từ file văn bản **PNUM.INP**

-   Dòng đầu là hai số nguyên dương $n,\ m$ tương ứng là số phần tử của
    dãy và số lượng phép biến đổi;

-   $m$ dòng sau mỗi dòng là ba số nguyên dương
    $u,v,k\ (0 < u \leq v \leq n)$.

**Kết quả:** Ghi ra file văn bản **PNUM.OUT** gồm nhiều dòng, mỗi dòng
chứa một số nguyên dương là vị trí của số hoàn hảo tìm được trong dãy
theo thứ tự tăng dần.

**Ví dụ:**

+-----------------+-----------------+----------------------------------+
| **PNUM.INP**    | **PNUM.OUT**    | **Giải thích**                   |
+=================+=================+==================================+
| 6 3             | 1               | \- Dãy thu được sau 3 phép biến  |
|                 |                 | đổi là: $6\ 10\ 32\ 28\ 28\ 6$   |
| 1 6 6           | 4               |                                  |
|                 |                 |                                  |
| 2 3 4           | 5               |                                  |
|                 |                 |                                  |
| 3 5 22          | 6               |                                  |
+-----------------+-----------------+----------------------------------+
