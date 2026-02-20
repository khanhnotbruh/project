# **TẤM CÁCH NHIỆT (IZO.CPP)**

Một công ty sản xuất tấm cách nhiệt nhiều tầng. Mỗi tầng thứ
i$,\ (i = 1,\ 2,\ ...,\ n),$ có một hệ số cách nhiệt là *a~i~*. Các tầng
được đánh số từ hướng nóng ra bên ngoài.

Hơi nóng      →      \|\| *a*~1~ \| *a*~2~ \| \... \| *a~i~* \|
*a~i~*~+1~ \| \... \| *a~n~* \|\|      → bên ngoài     

Hệ số cách nhiệt của một tấm các nhiệt được đo bằng công thức sau:

$$A = \sum_{i = 1}^{n}a_{i} + \sum_{i = 1}^{n - 1}{max(0;a_{i + 1} - a_{i})}$$

Ví dụ: Hệ số cách nhiệt của tấm các nhiệt sau:

→     \|\| 5 \| 4 \| 1 \| 7 \|\|      →

là $A\  = \ (5 + 4 + 1 + 7) + (7 - 1)\  = \ 23$.

Bạn hãy viết một chương trình, cho hệ số của các tầng cách nhiệt, hãy
sắp xếp lại thứ tự các tầng cách nhiệt sao cho hệ số cách nhiệt của cả
tấm là lớn nhất có thể.

**Dữ liệu vào:**

-   Dòng đầu tiên ghi số n là số tầng của tấm các nhiệt
    $(1 \leq n \leq 100.000)$

-   n dòng tiếp theo: dòng *i* ghi một số nguyên dương *a~i~* thể hiện
    hệ số cách nhiệt của lớp cách nhiệt thứ $i$
    $(1 \leq a_{i} \leq 10.000)$

**Kết quả ra:** Ghi một số duy nhất là hệ số cách nhiệt lớn nhất của tấm
tìm được.

**Ví dụ:**

+-----------------------------------+----------------------------------+
| **INPUT**                         | **OUTPUT**                       |
+===================================+==================================+
| 4                                 | 24                               |
|                                   |                                  |
| 5                                 |                                  |
|                                   |                                  |
| 4                                 |                                  |
|                                   |                                  |
| 1                                 |                                  |
|                                   |                                  |
| 7                                 |                                  |
+-----------------------------------+----------------------------------+
