**Dương Thị Bích Lan - THPT Nguyễn Bỉnh Khiêm**

**Câu hỏi: SỐ BẬC THANG (BACTHANG.CPP)**

Cho một mảng gồm $n$ số nguyên dương $a_{1},a_{2},\ldots,a_{n}$. Ta gọi
***số bậc thang*** là số có nhiều hơn một chữ số, tính từ trái qua phải
chữ số đứng sau lớn hơn chữ số đứng trước.

Ví dụ:

-   Các số 1234, 24689 là số bậc thang;

-   Các số 144, 65432, 1 không phải là số bậc thang.

**Yêu cầu**: Hãy đếm xem trong mảng đã cho có bao nhiêu *số bậc thang*.

**Dữ liệu** vào

-   Dòng đầu tiên chứa số nguyên dương $n\ (3 \leq n \leq 5\ 000)$ là số
    phần tử của mảng;

-   Dòng tiếp theo chứa $n$ số nguyên dương
    $a_{1},a_{2},\ldots,a_{n}\ (a_{i} \leq {2.10}^{9},\ i = \overline{1;n})$.

**Kết quả** **ra:** một số duy nhất là số lượng số bậc thang tìm được.

**Ví dụ:**

+------------------------+-------------+-------------------------------+
| **Bacthang.inp**       | **Bac       | **Giải thích**                |
|                        | thang.out** |                               |
+------------------------+-------------+-------------------------------+
| 6                      | 4           | Có 4 số bậc thang: 15, 79,    |
|                        |             | 1578, 368.                    |
| 15 79 1578 532 368 7   |             |                               |
|                        |             | Các số 532, 7 không phải số   |
|                        |             | bậc thang                     |
+------------------------+-------------+-------------------------------+
