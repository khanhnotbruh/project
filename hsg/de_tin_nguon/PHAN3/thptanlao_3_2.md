Phạm Minh Hòa -- THPT An Lão

**Bài 3: Chèn dấu**

Xét một dãy số nguyên A gồm *N* phần tử a~1~, a~2~, \..., a~N~. Viết dãy
số đó theo thứ tự từ trái sang phải, sau đó đặt giữa mỗi cặp số cạnh
nhau dấu cộng \'**+**\' hoặc trừ \'**-**\', khi đó ta thu được một biểu
thức số học. Ta nói dãy số là chia hết cho *K* nếu tồn tại một cách đặt
dấu để thu được biểu thức số học chia hết cho *K*.

***Yêu cầu***: Hãy xác định dãy số đã cho có chia hết cho *K* hay không.

***Dữ liệu vào:*** Cho trong file văn bản SIGN.INP có cấu trúc như sau:

-   *Dòng 1:* Ghi hai số nguyên *N* và *K* (2 ≤ *N* ≤ 10^4^, 2 ≤ *K* ≤
    > 1000).

-   *Dòng 2:* Ghi *N* số nguyên *a~i~ .* Các số được ghi cách nhau ít
    > nhất một dấu cách

(0 \< *i* \< *N*, 0 \< *a~i~* \<10^4^).

***Dữ liệu ra***: Ghi ra file văn bản SIGN.OUT theo cấu trúc như sau:

-   *Dòng 1:* Ghi số 0 nếu không có cách đặt dấu phù hợp, ngược lại ghi
    số 1 tiếp đó ghi liền (không dùng dấu cách) một cách đặt dấu phù hợp
    tương ứng với các số hạng trong dãy chia hết cho *K*.

***Ví dụ***:

+----------------------------------+-----------------------------------+
| SIGN.INP                         | SIGN.OUT                          |
+==================================+===================================+
| > 4 6                            | 0                                 |
| >                                |                                   |
| > 1 2 3 4                        |                                   |
+----------------------------------+-----------------------------------+

+----------------------------------+-----------------------------------+
| SIGN.INP                         | SIGN.OUT                          |
+==================================+===================================+
| > 4 7                            | 1-++                              |
| >                                |                                   |
| > 1 2 3 5                        |                                   |
+----------------------------------+-----------------------------------+

DAP AN

**Bài 3 (8 điểm):**

+--------+----+-----+-------------------------------------------------+
| *      | ** | **  | **Mô tả yêu cầu**                               |
| *Bài** | Te | Điể |                                                 |
|        | st | m** |                                                 |
|        | ** |     |                                                 |
+========+====+=====+=================================================+
| Bài 3  | 1  | 1.0 | > Xử lí được file input, output; thời gian chạy |
|        |    |     | > tối đã 1 giây                                 |
| (8     |    |     |                                                 |
| điểm)  |    |     |                                                 |
+--------+----+-----+-------------------------------------------------+
|        | 2  | 1.5 | > Xử lí được file input, output; thời gian chạy |
|        |    |     | > tối đã 1 giây                                 |
+--------+----+-----+-------------------------------------------------+
|        | 3  | 1.5 | > Xử lí được file input, output; thời gian chạy |
|        |    |     | > tối đã 1 giây                                 |
+--------+----+-----+-------------------------------------------------+
|        | 4  | 2   | > Xử lí được file input, output; thời gian chạy |
|        |    |     | > tối đã 1 giây                                 |
+--------+----+-----+-------------------------------------------------+
|        | 5  | 2   | > Xử lí được file input, output; thời gian chạy |
|        |    |     | > tối đã 1 giây                                 |
+--------+----+-----+-------------------------------------------------+
