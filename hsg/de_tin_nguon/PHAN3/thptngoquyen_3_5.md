**3.5. Vắt sữa bò**

       Vào một buổi sáng anh Bo sắp một đàn bò gồm n con bò để vắt sữa.
Anh dự kiến là vào sáng hôm đó, con bò thứ i có khả năng sẽ vắt được
a~i~ lít sữa. Tuy nhiên đàn bò của anh có đặc tính là cứ mỗi lần vắt sữa
một con, những con còn lại trông thấy sợ quá nên sẽ bị giảm sản lượng
mỗi con 01 lít sữa. Nếu vắt sữa con bò thứ nhất, n-1 con còn lại bị giảm
sản lượng. Sau đó vắt sữa con bò thứ hai thì n-2 con còn lại bị giảm sản
lượng\.... Bạn hãy giúp anh Bo tính xem thứ tự vắt sữa bò như thế nào để
số lượng sữa vắt được là nhiều nhất nhé.

Dữ liệu vào bai3.inp: gồm 2 dòng

\- Dòng thứ nhất là số nguyên n (1 ≤ n ≤ 10^6^) là số lượng con bò.

\- Dòng thứ hai gồm n số nguyên a~1~, a~2~,\..., a~n~ (1 ≤ a~i~ ≤ 10^5^)
là sản lượng sữa của các con bò.

Dữ liệu ra bai3.out:

\- Là một số nguyên xác định số lít sữa nhiều nhất mà anh Bo có thể vắt
được.

Ví dụ

+-----------------------------------+-----------------------------------+
| Bai3.inp                          | Bai3.out                          |
+===================================+===================================+
| 4                                 | 10                                |
|                                   |                                   |
| 4 4 4 4                           |                                   |
+-----------------------------------+-----------------------------------+
| 4                                 | 6                                 |
|                                   |                                   |
| 2 1 4 3                           |                                   |
+-----------------------------------+-----------------------------------+

\- Trong test 1: vắt sữa con bò 1 (được 4), lượng sữa còn lại là 3 3 3;
vắt sữa con bò 2 (được 3), lượng sữa còn lại là 2 2, vắt sữa con bò 3
(được 2) và con bò 4 (được 1), tổng cộng 10.

\- Trong test 2: vắt sữa con bò 1 (được 2), lượng sữa còn lại là 0 3 2;
vắt sữa con bò 3 (được 3) và vắt sữa con bò 4 (được 1) tổng cộng 6.
