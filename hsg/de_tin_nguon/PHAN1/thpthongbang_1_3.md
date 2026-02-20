**Phạm Hải Ninh -- Trường THPT Hồng Bàng**

**CAUHOI**

**Bài 1:** Cho một số nguyên dương $n.\ $Bạn hãy đếm số cách phân tích
số $n$ thành **tổng** 2 số nguyên tố khác nhau $u,v\ (u < v)$.

**Dữ liệu**: vào từ file văn bản **BAI2.INP** chứa số nguyên dương $n$
$(2 \leq n \leq 300.000)$.

**Kết quả**: ghi ra file văn bản **BAI2.OUT**

-   Dòng 1 ghi một số nguyên $k$ là số cách phân tích thỏa mãn điều kiện
    đề bài. Nếu không có cách phân tích ghi số **0**.

-   Trường hợp $k > 0,k$ dòng tiếp theo, dòng thứ $i$ ghi 2 số
    $u\lbrack i\rbrack,v\lbrack i\rbrack\ (u\lbrack i\rbrack < v\lbrack i\rbrack)$
    là cách phân tích thứ $i$ theo yêu cầu:
    $u\lbrack 1\rbrack < u\lbrack 2\rbrack < ... < u\lbrack k\rbrack$.

*Các số nguyên trong file kết quả phải được ghi cách nhau ít nhất 1 dấu
cách trống.*

**Ví dụ:**

+---------------+----------------+-------------------------------------+
| **BAI1.INP**  | **BAI1.OUT**   | **Giải thích**                      |
+---------------+----------------+-------------------------------------+
| 82            | 4              | Số 82 có **4** cách phân tích       |
|               |                | $82 = 3 +                           |
|               | 3 79           |  79 = 11 + 71 = 23 + 59 = 29 + 53$. |
|               |                |                                     |
|               | 11 71          | Cách phân tích $82 = 41\text{+}41$  |
|               |                | không được tính vì $u = v$          |
|               | 23 59          |                                     |
|               |                |                                     |
|               | 29 53          |                                     |
+---------------+----------------+-------------------------------------+
| 11            | 0              | Số 11 không phân tích được          |
+---------------+----------------+-------------------------------------+

DAPAN

\- Có 10 test trong đó:

\+ Các test và kết quả các test lưu trên disk.

\+ Đưa ra kết quả đúng: Mỗi test 0,6 điểm.

\+ Nếu chương trình không cho ra kết quả, giám khảo có thể xem lại mã
nguồn và đánh giá bài làm và cho tối đa 2 điểm.

Giám khảo có thể thêm test.
