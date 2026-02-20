**Dương Thị Bích Lan - THPT Nguyễn Bỉnh Khiêm**

**Câu hỏi:**

**CHỜ XE BUÝT (BUS.CPP)**

Hùng làm việc cho công ty buýt TPC, cậu được giao nhiệm vụ thu thập
thông tin học sinh TPC để công ty có thể thực hiện việc tối ưu hóa lịch
phục vụ học sinh TPC di chuyển từ bến xe đến trường mới.

Tại bến xe buýt, mỗi ngày, chuyến xe buýt đầu tiên đi qua ở thời điểm
$T_{0}$, chuyến thứ hai đi qua ở thời điểm $T_{0} + D$, chuyến thứ ba đi
qua ở thời điểm $T_{0} + 2 \times D,\ldots$ Có $N$ học sinh thường xuyên
chờ xe buýt tại bến, học sinh thứ $i$ đến bến ở thời điểm $S_{i}$ và sẽ
lên chuyến xe buýt đầu tiên đến bến ở thời điểm không sớm hơn $S_{i}$

**Yêu cầu:** Cho $T_{0},D$ và thời điểm các học sinh đến bến, hãy xác
định số hiệu chuyến xe buýt sẽ lên của tứng khách hàng?

**Dữ liệu vào:**

-   Dòng thứ nhất chứa ba số nguyên dương $N,D,T_{0}$
    $(2 \leq N \leq 10000;1 \leq D \leq 10000;0 \leq T_{0} \leq 100000)$.

-   Dòng thứ 2 chứa $N$ số nguyên
    $s_{1},s_{2},\ldots,s_{N}\ (0 \leq s_{i} \leq 10^{6})$.

**Kết quả:** Ghi ra một dòng chứa $N$ số nguyên, số thứ $i$ là số hiệu
chuyến xe buýt mà hành khách thứ $i$ sẽ lên

**Ví dụ:**

+--------------------------------------+-------------------------------+
| **BUS.INP**                          | **BUS.OUT**                   |
+======================================+===============================+
| 3 5 8                                | 1 3 4                         |
|                                      |                               |
| 0 15 23                              |                               |
+--------------------------------------+-------------------------------+
