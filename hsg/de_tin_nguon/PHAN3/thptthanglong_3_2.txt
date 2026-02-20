Đoàn Anh Tú -- Trường THP Thăng Long

**CAUHOI**

**[Bài 3]{.underline}**: Đoạn con có số đơn điệu dài nhất

Một dãy nguyên dương được gọi là đơn điệu nếu các chữ số của nó luôn
phiên tăng giảm hoặc giảm tăng.

**Yêu cầu**: Tìm trong một dãy các chữ số liên tiếp nhau tạo thành một
dãy có các số đơn điệu có độ dài lớn nhất.

**Dữ liệu:** Vào từ file văn bản **BAI3.INP**

-   Dòng thứ nhất chứa số nguyên dương $n\ (1 \leq n \leq 1\ 000\ 000)$;

-   Dòng tiếp theo là $n$ số nguyên dương
    $a_{1},a_{2},\ldots,a_{n}\ (1 \leq a_{i} \leq 1\ 000,\ \ \forall i = 1..n)$.

**Kết quả:** Ghi ra file văn bản **BAI3.OUT** một số nguyên duy nhất là
độ dài lớn nhất tìm được

**Ví dụ:**

+-------------------+---------------+----------------------------------+
| **BAI3.INP**      | **BAI3.OUT**  | **Giải thích**                   |
+===================+===============+==================================+
| 7                 | 4             | Đoạn liên tiếp dài nhất thỏa mãn |
|                   |               | là $\{ 2\ 3\ 2\ 4\ \}$           |
| 1 2 3 2 4 6 6     |               |                                  |
+-------------------+---------------+----------------------------------+

DAPAN:

Có 20 test trong đó:

\+ Các test và kết quả các test lưu trên disk.

\+ Đưa ra kết quả đúng: Mỗi test 0,5 điểm.

\+ Nếu chương trình không cho ra kết quả, giám khảo có thể xem lại mã
nguồn và đánh giá bài làm và cho tối đa 2 điểm.
