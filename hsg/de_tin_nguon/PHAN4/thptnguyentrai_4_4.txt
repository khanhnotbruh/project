Họ và tên: Nguyễn Tiến Đạt

Trường THPT Nguyễn Trãi

**BÀI 4. DÃY SỐ NGUYÊN TỐ**

Cho dãy gồm $n$ số nguyên dương $a_{1},a_{2},\ldots,a_{n}$ và $m$ câu
hỏi có dạng $(u\ v)$. Với mỗi câu hỏi phải đưa ra câu trả lời: từ vị trí
$u\ $ đến vị trí $v$ của dãy $a_{1},a_{2},\ldots,a_{n}$ có bao nhiêu số
nguyên tố.

**Yêu cầu**: Em hãy lập trình trả lời các câu hỏi trên.

**Dữ liệu:** Vào từ file văn bản **PRIME.INP**

-   Dòng thứ nhất chứa hai số nguyên dương $n$ và $m$;

-   Dòng thứ hai là $n$ số nguyên
    $a_{1},a_{2},\ldots,a_{n}\ (1 \leq a_{i} \leq 10^{6},\ \ \forall i = 1..n)$;

-   $m\ $dòng tiếp theo, dòng thứ $i$ chứa hai số nguyên dương
    $u_{i},\ v_{i\ }(1 \leq u_{i} \leq v_{i} \leq n,\ \ \forall i = 1..n)$.

**Kết quả:** Ghi ra file văn bản **PRIME.OUT** $m$ dòng, dòng thứ $i$
chứa một số nguyên là câu trả lời tương ứng cho câu hỏi thứ $i$.

**Ví dụ:**

+-----------------------------------------+----------------------------+
| **\                                     | **PRIME.OUT**              |
| PRIME.INP**                             |                            |
+=========================================+============================+
| 10 4                                    | 3                          |
|                                         |                            |
| 8 7 5 11 15 19 23 31 2 8                | 5                          |
|                                         |                            |
| 2 4                                     | 4                          |
|                                         |                            |
| 1 7                                     | 4                          |
|                                         |                            |
| 4 8                                     |                            |
|                                         |                            |
| 6 9                                     |                            |
+-----------------------------------------+----------------------------+

***Chú ý:***

-   35% số test tương ứng với 35% số điểm có
    $n \leq 1\ 000,\ m \leq 100$;

-   35% số test tương ứng với 35% số điểm có
    $n \leq 100\ 000,\ m \leq 1\ 000;$

-   30% số test tương ứng với 30% số điểm có
    $n \leq 100\ 000,\ m \leq 100\ 000.$
