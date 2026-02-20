# **LẬP TRÌNH VIÊN VŨ TRỤ ACM (ACM.CPP)**

SuperCoders là đội tuyển huyền thoại của trường XYZ đã nhiều lần vô địch
cuộc thi lập trình viên vũ trụ ACM Universe Final. Theo thể thức cuộc
thi, mỗi đội tham dự chỉ có đúng 3 thành viên và được giao duy nhất một
máy tính, chính vì vậy việc điều phối công việc vô cùng quan trọng.
Trong đội SuperCoders, PHUONGHD - đội trưởng - là người nắm giữ vai trò
đó.

Đề thi ACM năm nay gồm có $2n$ bài đánh số từ 1 tới $2n$. Bằng kỹ năng
thiết kế thuật toán siêu việt, chỉ vài giây sau khi đọc đề, PHUONGHD đã
có lời giải cho cả $2n$ bài. Vấn đề còn lại là phân công hai người còn
lại lập trình bởi PHUONGHD không quen với thứ ngôn ngữ lập trình mới
được đưa vào sử dụng tại cuộc thi.

Do rất hiểu hai lập trình viên Tí và Tèo trong đội, PHUONGHD biết rằng
bài thứ $i$ nếu giao cho Tí làm sẽ mất $a_{i}$ giây, cũng bài đó nếu
giao cho Tèo sẽ mất $b_{i}$ giây để hoàn thành
($\forall i:1 \leq i \leq 2n$). Nhiệm vụ của bạn là hãy giúp PHUONGHD
phân công cho hai lập trình viên, mỗi người làm đúng $n$ bài sao cho
tổng thời gian lập trình cả $2n$ bài là ít nhất.

**Dữ liệu:**

-   Dòng 1 chứa số nguyên dương $n \leq {4.10}^{5}$

-   $2n$ dòng tiếp theo, dòng thứ $i$ chứa hai số nguyên dương
    $a_{i},b_{i} \leq 100$ cách nhau bởi dấu cách.

**Kết quả:** Ghi ra một số nguyên duy nhất là tổng thời gian lập trình
cả $2n$ bài theo phương án phân công tìm được.

**Ví dụ:**

+----------------------------------+-----------------------------------+
| **INPUT**                        | **OUTPUT**                        |
+==================================+===================================+
| 2                                | 8                                 |
|                                  |                                   |
| 2 [1]{.underline}                |                                   |
|                                  |                                   |
| [3]{.underline} 2                |                                   |
|                                  |                                   |
| 5 [3]{.underline}                |                                   |
|                                  |                                   |
| [1]{.underline} 2                |                                   |
+----------------------------------+-----------------------------------+

**Chú ý:**

-   40% số điểm ứng với các test có $n \leq 1000$

-   30% số điểm ứng với các test có
    $n \in \left\lbrack 10^{4},10^{5} \right\rbrack$

-   30% số điểm ứng với các test có
    $n \in \left\lbrack {3.10}^{5},{4.10}^{5} \right\rbrack$
