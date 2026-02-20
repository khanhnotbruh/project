# **ĐOẠN CON (SUBSEQ.CPP)**

Cho dãy số nguyên $a_{1},\ a_{2},\ \ldots,\ a_{n}$ và số nguyên dương
$k$.

*Yêu cầu:* Tìm đoạn con liên tiếp gồm không ít hơn $k$ số nguyên trong
dãy sao cho tổng các số nguyên thuộc đoạn là lớn nhất

**Dữ liệu:**

-   Dòng 1 ghi hai số nguyên dương
    $n,\ k\ (1 \leq k \leq n \leq 10^{6})$

-   $n$ dòng tiếp theo, dòng thứ $i$ chứa số nguyên
    $a_{i}\ (\left| a_{i} \right| \leq 1000)$

**Kết quả:** Một số nguyên là tổng các giá trị đoạn con theo yêu cầu.

**Ví dụ:**

+----------------------------------+-----------------------------------+
| **INPUT**                        | **OUTPUT**                        |
+==================================+===================================+
| 8 3                              | 120                               |
|                                  |                                   |
| -20                              |                                   |
|                                  |                                   |
| 90                               |                                   |
|                                  |                                   |
| -30                              |                                   |
|                                  |                                   |
| -20                              |                                   |
|                                  |                                   |
| 80                               |                                   |
|                                  |                                   |
| -70                              |                                   |
|                                  |                                   |
| -60                              |                                   |
|                                  |                                   |
| 125                              |                                   |
+----------------------------------+-----------------------------------+
