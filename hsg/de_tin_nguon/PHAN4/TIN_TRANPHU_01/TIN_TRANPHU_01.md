# **ZERO SUM (ZSUM.CPP)**

Cho các dãy số nguyên (có giá trị tuyệt đối không quá 10^9^): A~1~,
A~2~,... A~M~; B~1~, B~2~,... B~N~; C~1~, C~2~,... C~P~
($0 < M,\ N,\ P \leq 1000$). Hỏi có tồn tại bộ ba số $(a,\ b,\ c)$ với a
$\in$ A, b $\in$ B, c $\in$ C sao cho $a + b + c = 0$ hay không?

**Dữ liệu vào:** Gồm đúng 2 bộ dữ liệu, mỗi bộ dữ liệu có dạng như sau:

\- Dòng thứ nhất chứa 3 số M, N, P.

\- Dòng thứ hai chứa dãy A.

\- Dòng thứ ba chứa dãy B.

\- Dòng thứ thứ tư chứa dãy C.

**Kết quả:** Ghi ra chuỗi 2 kí tự XY, với X, Y là đáp án tương ứng cho
mỗi bộ dữ liệu, X/Y = 1 nếu tồn tại bộ số nói trên, và 0 nếu ngược lại.

**Ví dụ:**

+-------------------------------+--------------------------------------+
| **INPUT**                     | **OUTPUT**                           |
+===============================+======================================+
| 1 2 3                         | 10                                   |
|                               |                                      |
| -1                            |                                      |
|                               |                                      |
| -1 0                          |                                      |
|                               |                                      |
| -1 0 1                        |                                      |
|                               |                                      |
| 3 3 3                         |                                      |
|                               |                                      |
| 1 1 1                         |                                      |
|                               |                                      |
| -1 -1 -1                      |                                      |
|                               |                                      |
| -2 2 -2                       |                                      |
+-------------------------------+--------------------------------------+
