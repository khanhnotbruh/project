# **SÓC VÀ HẠT DẺ (SQUIRR2.CPP)**

Có N chú sóc đang đứng chờ dưới gốc của M cây hạt dẻ. Cây hạt dẻ thứ i
sẽ bắt đầu rụng quả đầu tiên sau $T_{i}$ giây nữa, và cứ sau $P_{i}$
giây lại rụng thêm một quả. Sóc mẹ muốn các cậu con trai của mình mang
về tổ không ít hơn k quả hạt dẻ để chuẩn bị tránh cơn sóng thần dữ dội
đến từ biển Đông xa xôi, nhưng cũng phải thật nhanh chóng trước khi cơn
sóng thần kịp ập đến chứ chẳng thể nhởn nhơ! Vậy nên các chú sóc đang
bàn nhau xem nên đứng ở những gốc cây nào để có thể hứng đủ số quả cần
thiết trong thời gian nhanh nhất. Thời gian để các chú sóc đi về vị trí
cần đứng coi như không đáng kể, các chú sóc cũng không di chuyển sang
gốc cây nào khác trong lúc đang hứng hạt dẻ.

**Yêu cầu**: Hãy tính thời gian sớm nhất (sau bao nhiêu giây nữa) các
chú sóc có thể hứng đủ số quả cần thiết.

**Dữ liệu vào:**

-   Dòng 1: M, N, K
    $\left( 0 < M,N \leq 50.000;0 < k \leq 10^{9} \right)$

-   M số nguyên $T_{i}\ \left( i = 1..M;0 < T_{i} \leq 100 \right)$

-   M số nguyên $P_{i}\ \left( i = 1..M;0 < P_{i} \leq 100 \right)$

**Kết quả:** Ghi ra trên một dòng duy nhất một số nguyên là thời gian
sớm nhất tìm được?

+-------------------+-------------------------+------------------------+
| **INPUT**         | **OUTPUT**              | **Giải thích**         |
+===================+=========================+========================+
| 3 2 5             | 4                       | 2 chú sóc đứng ở gốc   |
|                   |                         | cây 2 và 3             |
| 5 1 2             |                         |                        |
|                   |                         |                        |
| 1 2 1             |                         |                        |
+-------------------+-------------------------+------------------------+
