# **TINH THẦN THỂ THAO (FAIRPLAY.CPP)**

Để tạo không khí vui vẻ náo nhiệt, trong buổi giao lưu giữa sinh viên
các trường tham dự OLP --ACM, trường đăng cai OLP năm tới đề xuất tổ
chức một cuộc thi đấu game online tay đôi giữa sinh viên trường mình với
sinh viên trường sở tại. Mỗi trường cử ra một đội $\mathbf{n}$ người,
tạo thành $\mathbf{n}$ cặp đấu, sinh viên cùng trường không đấu với
nhau. Trò chơi được chọn là một trò chơi rất phổ biến, được các bạn trẻ
yêu thích, ai cũng biết vàđã từng chơi nhiều trước đó. Mọi người đều
biết chỉ số năng lực của mình trong trò chơi này và biết rằng nếu đấu
tay đôi, ai có năng lực cao hơn sẽ thắng. Trong các trận đấu tay đôi,
người thắng sẽ được 1 điểm, người thua -- 0 điểm. Thời gian chơi được
quy định đủ để phân biệt thắng thua. Các trận hòa sẽ kéo dài vô hạn và
sẽ bị hủy kết quả khi hết thời gian. Với tinh thần fair play các bạn
trường đề xuất ngồi vào vị trí thi đấu, truy nhập vào hệ thống và gửi về
máy chủ chỉ số năng lực của mình. Trưởng đoàn của trường sở tại có 0.5
giây để xử lý thông tin, phân công ai đấu với ai để tổng số điểm thu
được là lớn nhất.

Hãy xác định, với cách bố trí tối ưu các cặp đấu, đội của trường sở tại
sẽ có bao nhiêu điểm.

**Dữ liệu vào:**

-   Dòng đầu tiên chứa số nguyên
    $n\ \left( 1 \leq n \leq 10^{5} \right);$

-   Dòng thứ 2 chứa $n$ số nguyên
    $a_{1},\ a_{2},\ .\ .\ .,\ a_{n}\ (1 \leq a_{i} \leq 10^{9})$, trong
    đó $a_{i}$ -- chỉ số năng lực của người thứ $i$ thuộc đội của trường
    đề xuất;

-   Dòng thứ 3 chứa $n$ số nguyên
    $b_{1},\ b_{2},\ .\ .\ .,\ b_{n}\ (1 \leq b_{i} \leq 10^{9})$, trong
    đó $b_{i}$-- chỉ số năng lực của người thứ $i$thuộc đội của trường
    sở tại.

**Kết quả ra**: Một số nguyên -- số điểm đội trường sở tại có thể đạt
được với cách bố trí cặp chơi tối ưu.

**Ví dụ**

+---------------------------------------+------------------------------+
| **INPUT**                             | **OUTPUT**                   |
+=======================================+==============================+
| 5                                     | 4                            |
|                                       |                              |
| 10 15 30 20 25                        |                              |
|                                       |                              |
| 28 24 20 16 14                        |                              |
+---------------------------------------+------------------------------+
