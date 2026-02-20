***Trần Thị Hương -- Trường THPT Thăng Long***

CAUHOI

**Bài 4.** Cho một mảng $A$ gồm $n$ số nguyên
$a_{1},a_{2},\ldots,a_{n}$.

**Yêu cầu**:

Bạn hãy tìm đoạn con liên tiếp dài nhất trong mảng $A$ sao cho tổng các
phần tử trong đoạn con là số dương. (*biết rằng đoạn con liên tiếp từ*
$i$ *đến* $j$ *(*$1 \leq i \leq j \leq n$*) là*
$a_{i},a_{i + 1},\ldots,a_{j}$)

**Dữ liệu** vào từ file văn bản **BAI4.INP:**

-   Dòng đầu tiên chứa số nguyên dương $n\ (3 \leq n \leq 5\ 000)$ là số
    phần tử của mảng;

-   Dòng tiếp theo chứa $n$ số nguyên
    $a_{1},a_{2},\ldots,a_{n}\ (\left| a_{i} \right| \leq 10^{4},\ i = \overline{1;n})$.

*Các số nguyên trong file dữ liệu được ghi cách nhau ít nhất 1 dấu cách
trống.*

**Kết quả** ghi ra file văn bản **BAI3.OUT** một số nguyên duy nhất là
độ dài đoạn con liên tiếp dài nhất tìm được. Nếu không tìm được đoạn con
liên tiếp thỏa mãn thì ghi **-1**

**Ví dụ:**

+------------------------------+-----------+---------------------------+
| **BAI4.INP**                 | **B       | **Giải thích**            |
|                              | AI4.OUT** |                           |
+------------------------------+-----------+---------------------------+
| 10                           | 5         | Có nhiều đoạn liên tiếp   |
|                              |           | có tổng các phần tử là số |
| 2 3 16 -68 11 13 23 -9 6 -63 |           | dương                     |
|                              |           |                           |
|                              |           | -   2 3 16                |
|                              |           |                           |
|                              |           | -   11 13 23 -9 6         |
+------------------------------+-----------+---------------------------+

**Chú ý:** 60% số test tương ứng với 60% số điểm có $n \leq 100.$

DAPAN

\- Có 20 test trong đó:

\+ Các test và kết quả các test lưu trên disk.

\+ Đưa ra kết quả đúng: Mỗi test 0,5 điểm.

\+ Nếu chương trình không cho ra kết quả, giám khảo có thể xem lại mã
nguồn và đánh giá bài làm và cho tối đa 2 điểm.
