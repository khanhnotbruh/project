***Trần Thị Hương -- Trường THPT Thăng Long***

**CAUHOI**

**Bài 3.** Cho một mảng gồm $n$ số nguyên dương
$a_{1},a_{2},\ldots,a_{n}$. Ta gọi ***số bậc thang*** là số có nhiều hơn
một chữ số, tính từ trái qua phải chữ số đứng sau lớn hơn chữ số đứng
trước.

Ví dụ:

-   Các số 1234, 24689 là số bậc thang;

-   Các số 144, 65432, 1 không phải là số bậc thang.

**Yêu cầu**: Hãy đếm xem trong mảng đã cho có bao nhiêu *số bậc thang*.

**Dữ liệu** vào từ file văn bản **BAI2.INP**:

-   Dòng đầu tiên chứa số nguyên dương $n\ (3 \leq n \leq 5\ 000)$ là số
    phần tử của mảng;

-   Dòng tiếp theo chứa $n$ số nguyên dương
    $a_{1},a_{2},\ldots,a_{n}\ (a_{i} \leq {2.10}^{9},\ i = \overline{1;n})$.

*Các số nguyên trong file dữ liệu được ghi cách nhau ít nhất 1 dấu cách
trống.*

**Kết quả** ghi ra file văn bản **BAI2.OUT** một số duy nhất là số lượng
số bậc thang tìm được.

**Ví dụ:**

+------------------------+-------------+-------------------------------+
| **BAI2.INP**           | *           | **Giải thích**                |
|                        | *BAI2.OUT** |                               |
+------------------------+-------------+-------------------------------+
| 6                      | 4           | Có 4 số bậc thang: 15, 79,    |
|                        |             | 1578, 368.                    |
| 15 79 1578 532 368 7   |             |                               |
|                        |             | Các số 532, 7 không phải số   |
|                        |             | bậc thang                     |
+------------------------+-------------+-------------------------------+

DAPAN

\- Có 20 test trong đó:

\+ Các test và kết quả các test lưu trên disk.

\+ Đưa ra kết quả đúng: Mỗi test 0,5 điểm.

\+ Nếu chương trình không cho ra kết quả, giám khảo có thể xem lại mã
nguồn và đánh giá bài làm và cho tối đa 2 điểm.
