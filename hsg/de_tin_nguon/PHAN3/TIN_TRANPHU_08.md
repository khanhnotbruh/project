**BÀI 84: TRÒ CHƠI VỚI DÃY SỐ (SGAME.CPP)**

Hai bạn học sinh trong lúc nhàn rỗi nghĩ ra trò chơi sau đây. Mỗi bạn
chọn trước một dãy số gồm n số nguyên. Giả sử dãy số mà bạn thứ nhất
chọn là:

$$b_{1},\ b_{2},\ ...,{\ b}_{n}$$

còn dãy số mà bạn thứ hai chọn là

$$c_{1},\ c_{2},\ ...,c_{n}$$

Mỗi lượt chơi mỗi bạn đưa ra một số hạng trong dãy số của mình. Nếu bạn
thứ nhất đưa ra số hạng $b_{i}\ (1 \leq i \leq n),$ còn bạn thứ hai đưa
ra số hạng $c_{j}$ $(1 \leq j \leq n)$ thì giá của lượt chơi đó sẽ là
$\left| b_{i} + c_{j} \right|$. Ví dụ: Giả sử dãy số bạn thứ nhất chọn
là 1, -2; còn dãy số mà bạn thứ hai chọn là 2, 3. Khi đó các khả năng có
thể của một lượt chơi là (1, 2), (1, 3), (-2, 2), (-2, 3). Như vậy, giá
nhỏ nhất của một lượt chơi trong số các lượt chơi có thể là 0 tương ứng
với giá của lượt chơi (-2, 2).

**Yêu cầu:** Hãy xác định giá nhỏ nhất của một lượt chơi trong số các
lượt chơi có thể.

**Dữ liệu vào**

-   Dòng đầu tiên chứa số nguyên dương n ($n \leq 10^{5})$

-   Dòng thứ hai chứa dãy số nguyên
    $b_{1},\ b_{2},\ ...,{\ b}_{n}\ (\left| b_{i} \right| \leq 10^{9})$

-   Dòng thứ ba chứa dãy số nguyên
    $c_{1},\ c_{2},\ ...,{\ c}_{n}\ (\left| c_{i} \right| \leq 10^{9})$

**Kết quả:** Ghi ra giá nhỏ nhất tìm được.

**Ràng buộc**

-   60% số tests ứng với 60% số điểm của bài có $1 \leq n \leq 1000$.

**Ví dụ**

+----------------------------------+-----------------------------------+
| **INPUT**                        | **OUTPUT**                        |
+==================================+===================================+
| 2                                | 0                                 |
|                                  |                                   |
| 1 -2                             |                                   |
|                                  |                                   |
| 2 3                              |                                   |
+----------------------------------+-----------------------------------+
