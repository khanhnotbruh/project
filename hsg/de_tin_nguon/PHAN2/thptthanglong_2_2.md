Đoàn Anh Tú -- Trường THPT Thăng Long

**CAUHOI**

**Bài 2: Số nguyên tố gần X**

Cho N số nguyên dương $a_{1},a_{2},\ldots,a_{N}$ và số X

**Yêu cầu**: Tìm phần tử có giá trị thỏa mãn là số nguyên tố và gần X
nhất. Biết rằng một số được coi là gần X nhất khi số đó lớn hơn hoặc kém
X một giá trị nhỏ nhất ?

**Dữ liệu:** Vào từ file văn bản **BAI2.INP**

-   Dòng 1: Chứa một số nguyên dương N ($N \leq 1.000)$

-   Dòng 2: Chứa một số nguyên dương X ($1 \leq X \leq 10^{8})$

-   Dòng 3: Chứa N số nguyên dương $a_{1},a_{2},\ldots,a_{N}$
    ($1 \leq a_{i} \leq 10^{8})$

*Các số trên một dòng của input file được ghi cách nhau bởi dấu cách.*

**Kết quả:** Ghi ra file văn bản **BAI2.OUT.** Ghi giá trị thỏa mãn đầu
bài. Nếu có nhiều phần tử thỏa mãn hãy chỉ ra phần tử cuối cùng tìm
thấy.

**Ví dụ:**

+-------------------------+---------------+----------------------------+
| **BAI2.INP**            | **BAI2.OUT**  | **Giải thích**             |
+=========================+===============+============================+
| 6                       | 5             | Phần tử thứ 3 có giá trị   |
|                         |               | bằng 5 thỏa mãn là số      |
| 4                       |               | nguyên tố và gần nhất với  |
|                         |               | giá trị X = 4              |
| 2 9 5 7 4 8             |               |                            |
+-------------------------+---------------+----------------------------+

DAPAN:

. Có 10 test trong đó:

\+ Các test và kết quả các test lưu trên disk.

\+ Đưa ra kết quả đúng: Mỗi test 0,5 điểm.

\+ Nếu chương trình không cho ra kết quả, giám khảo có thể xem lại mã
nguồn và đánh giá bài làm và cho tối đa 2 điểm.
