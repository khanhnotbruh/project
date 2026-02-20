Bài 4

Cho dãy số nguyên a1, a2, \... , an. Hãy thực hiện Q yêu cầu, mỗi yêu
cầu được cho bởi hai số nguyên L, R (1 ≤ L ≤ R ≤ n) với ý nghĩa tính:

> max{\|x − y\| ∶ L ≤ x, y ≤ R, ax = ay}

\* Dữ liệu vào bai4.inp gồm:

\- Dòng 1: Chứa hai số nguyên dương n,Q (1 ≤ n, Q ≤ 10^5^)

\- Dòng 2: Chứa n số nguyên a1, a2, \... , an (\|ai\| ≤ 10^9^)

\- Dòng 3..Q + 2: Dòng i + 2 mô tả yêu cầu thứ i gồm hai số nguyên Li,
Ri (1 ≤ Li ≤ Ri ≤n, i = 1 ÷ n)

\* Dữ liệu ra: In ra Q dòng, dòng thứ i ghi một số nguyên là câu trả lời
của yêu cầu thứ i (in 0 nếu tất cả các giá trị trong yêu cầu tương ứng
khác nhau)

\* Ví dụ:

+-----------------------------------+-----------------------------------+
| Bai4.inp                          | Bai4.out                          |
+===================================+===================================+
| 7 5                               | 0                                 |
|                                   |                                   |
| 4 5 6 6 5 7 4                     | 0                                 |
|                                   |                                   |
| 6 6                               | 1                                 |
|                                   |                                   |
| 5 6                               | 1                                 |
|                                   |                                   |
| 3 5                               | 6                                 |
|                                   |                                   |
| 3 7                               |                                   |
|                                   |                                   |
| 1 7                               |                                   |
+-----------------------------------+-----------------------------------+
