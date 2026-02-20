# **SỬA HÀNG RÀO (WALL.CPP)**

Sau khi dựng xong nhà kho, Hải Dương quyết định dùng $m$ tấm gỗ còn thừa
gia cố hàng rào của vườn rau ngăn không cho gà vào phá và giao công việc
này cho Hải Phong. Nhiệm vụ của Hải Phong là đóng thêm vào các tấm ván
hàng rào để có hàng rào mới càng cao càng tốt. Hàng rào được ghép từ $n$
tấm gỗ cùng độ rộng như nhau và bằng độ rộng của các tấm gỗ còn thừa,
tấm thứ $i$ có độ cao $a_{i}\ (1 \leq i \leq n).$ Hải Phong xếp các tấm
gỗ còn thừa lên xe ba gác để kéo đi, các tấm gỗ được xếp thành một
chồng, tính từ trên xuống tấm thứ $j$ có độ cao
$b_{j}\ (1 \leq j \leq m).$ Hải Phong kéo xe ba gác đi dọc theo hàng
rào. Đến một tấm nào đó muốn gia cố, Hải Phong sẽ lấy một tấm gỗ từ xe
đóng tiếp lên tấm gỗ trên hàng rào và độ cao mới của tấm này trên hàng
rào là tổng độ cao của tấm cũ và tấm mới đóng thêm. Hải Phong chỉ đóng
thêm một tấm mới vào tấm cũ để đảm bảo độ chắc chắn của hàng rào. Hải
Phong có thể lấy tấm trên cùng của xe hoặc vất ra khỏi xe một số tấm cho
đến khi gặp tấm gỗ vừa ý. Để đảm bảo sức khỏe và thời gian, Hải Phong
không xếp lại các tấm gỗ bị bỏ ra vào xe và cũng không quay lại lấy
những tấm bị loại.

**Yêu cầu:** Hãy xác định độ cao lớn nhất có thể đạt được của hàng rào
sau khi gia cố. Độ cao của hàng rào được tính bằng độ cao của tấm gỗ
thấp nhất trên hàng rào.

**Dữ liệu:**

-   Dòng đầu tiên chứa số nguyên dương $n\ (1 \leq n \leq 10^{5})$;

-   Dòng tiếp theo chứa $n$ số nguyên dương
    $a_{1},a_{2},\ldots,a_{n}\ \left( 1 \leq a_{i} \leq 10^{8},\ 1 \leq i \leq n \right)$;

-   Dòng tiếp theo chứa số nguyên dương$\ m\ (1 \leq m \leq 10^{5})$;

-   Dòng tiếp theo chứa $m$ số nguyên dương
    $b_{1},b_{2},\ldots,b_{m}\ \left( 1 \leq b_{j} \leq 10^{8},1 \leq j \leq m \right)$.

**Kết quả:** Ghi ra một số nguyên duy nhất là độ cao lớn nhất có thể đạt
được của hàng rào sau khi gia cố.

**Ví dụ:**

+---------------+---------------+-------------------------------------+
| **INPUT**     | **OUTPUT**    | **Giải thích**                      |
+===============+===============+=====================================+
| 6             | 5             | Có nhiều cách gia cố hàng rào để    |
|               |               | đạt độ cao $= 5$. Đây là một cách   |
| 2 5 4 1 7 5   |               | gia cố:                             |
|               |               |                                     |
| 7             |               | $$a_{1} + b_{2},a_{2},a_{3}         |
|               |               | + b_{3},a_{4} + b_{6},a_{5},a_{6}$$ |
| 2 3 1 3 2 4 6 |               |                                     |
|               |               | $$= \{ 5,\ 5,\ 5,\ 5,7,5\}$$        |
+---------------+---------------+-------------------------------------+
