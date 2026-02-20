**Nguyễn Bá Giầu - THPT Nguyễn Bỉnh Khiêm**

**Câu hỏi:**

SỐ MAY MẮN (NUMBERS.\*)

Một số được gọi là số may mắn nếu tổng các chữ số của số này đúng bằng
tổng các chữ số của tất cả các thừa số nguyên tố (trong phân tích ra
thừa số nguyên tố của số đó).

**Ví dụ 1:** 378 là số may mắn vì:

$$378 = 2 \times 3 \times 3 \times 3 \times 7$$

Tổng các chữ số của 378 là: $3 + 7 + 8 = 18$

Tổng các chữ số của các thừa số nguyên tố là: $2 + 3 + 3 + 3 + 7 = 18$

**Ví dụ 2**: 4937775 là số may mắn vì:

$$4937775 = 3 \times 5 \times 5 \times 65837$$

Tổng các chữ số của $4937775$ là: $4 + 9 + 3 + 7 + 7 + 7 + 5 = 42$

Tổng các chữ số của các thừa số nguyên tố là:
$3 + 5 + 5 + 6 + 5 + 8 + 3 + 7 = 42$

Ngoài ra còn có các số 4, 22, 27, 58, 85, 94 là các số may mắn:

**Yêu cầu**: Bạn hãy trả lời $t$ câu hỏi cho biết số nguyên dương $n$ có
phải số may mắn hay không?

**Dữ liệu vào**:

-   Số lượng câu hỏi $t\ (1 \leq t \leq 10)$

-   Mỗi câu hỏi có dạng: số nguyên dương
    $n\ (1 \leq n \leq 2\ 147\ 483\ 647)$

**Kết quả**: ghi trên $t$ dòng, dòng $i$ ghi câu trả lời cho câu hỏi
$i,$ ghi 1 nếu $n$ là số may mắn, ngược lại ghi 0

**Ví dụ:**

+---------------------------------+------------------------------------+
| **NUMBER.INP**                  | **NUMBER.OUT**                     |
+=================================+====================================+
| 3                               | 1                                  |
|                                 |                                    |
| 378                             | 1                                  |
|                                 |                                    |
| 2                               | 0                                  |
|                                 |                                    |
| 1                               |                                    |
+---------------------------------+------------------------------------+
