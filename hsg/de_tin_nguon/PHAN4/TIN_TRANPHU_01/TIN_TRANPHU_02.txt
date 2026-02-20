# **ĐỀ SỐ 2**

Cho dãy số nguyên $a_{1},\ a_{2},\ldots,\ a_{N}$. Số $a_{p}$
$(1 \leq p \leq N)$ được gọi là một số trung bình cộng trong dãy nếu tồn
tại 3 chỉ số i, j, k $(1 \leq i,j,k \leq N)$ đôi một khác nhau sao cho:

$$a_{p} = \frac{a_{i} + a_{j} + a_{k}}{3}$$

**Yêu cầu**: Cho $n$ và dãy số $a_{1},\ a_{2},\ldots,\ a_{N}$. Hãy tìm
số lượng các số trung bình cộng trong dãy.

**Dữ liệu vào:**

-   Dòng 1: Ghi số nguyên dương N ($3 \leq N \leq 1000$)

-   Dòng 2: Chứa N số nguyên a~i~ ($\left| a_{i} \right| \leq 10^{8}$)

**Kết quả:** Ghi một số duy nhất là số lượng số trung bình cộng của dãy

**Ví dụ:**

+------------------------------------+---------------------------------+
| **INPUT**                          | **OUTPUT**                      |
+====================================+=================================+
| 5                                  | 2                               |
|                                    |                                 |
| 4 3 6 3 5                          |                                 |
+------------------------------------+---------------------------------+
