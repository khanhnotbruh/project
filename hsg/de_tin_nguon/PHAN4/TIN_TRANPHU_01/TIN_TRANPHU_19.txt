# **SUMSEQ.CPP**

Cho dãy số nguyên gồm $N$ phân tử $a_{1},a_{2},\ldots,a_{N}$. Định nghĩa
dãy con của một dãy số là dãy mới được tạo sau khi bỏ đi một vài phần tử
của dãy ban đầu (hoặc không bỏ phần tử nào). Ví dụ dãy
$\lbrack 3,2,5\rbrack$ là dãy con của dãy $\lbrack 3,5,2,9,5\rbrack$.
Dãy rỗng (không gồm phần tử nào) là dãy con của mọi dãy số, dãy rỗng có
tổng là 0.

Yêu cầu: Có $Q$ câu hỏi, mỗi câu hỏi gồm một cặp số $(L;R)$
$(1 \leq L \leq R \leq N)$, với mỗi câu hỏi, bạn hãy tìm dãy con của dãy
$\lbrack a_{L},a_{L + 1},..,a_{R}\rbrack$ có tổng lớn nhất và in ra tổng
đó.

**Dữ liệu:**

-   Dòng 1: $N,Q$ $\left( N \leq 10^{5},Q \leq 10^{5} \right)$

-   Dòng 2: $N$ số nguyên $a_{1},a_{2},\ldots,a_{N}$
    $\left| a_{i} \right| \leq 10^{5}$

-   $Q$ dòng tiếp theo, mỗi dòng một cặp số nguyên dương $(L;R)$

**Kết quả:** Ghi ra trên $Q$ dòng, mỗi dòng là đáp án của câu hỏi tương
ứng

**Ví dụ:**

+------------------------------------+---------------------------------+
| **INPUT**                          | **OUTPUT**                      |
+====================================+=================================+
| > 5 2                              | > 6                             |
| >                                  | >                               |
| > -1 2 -3 4 -5                     | > 0                             |
| >                                  |                                 |
| > 2 4                              |                                 |
| >                                  |                                 |
| > 3 3                              |                                 |
+------------------------------------+---------------------------------+
