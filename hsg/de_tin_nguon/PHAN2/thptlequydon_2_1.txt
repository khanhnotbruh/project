**Lưu Thị Oanh -- THPT Lê Quý Đôn*   **** *

***       Bài 2(6 điểm):** Cho xâu ký tự chỉ gồm các chữ cái in hoa từ
'A' đến 'Z'. Bạn được phép xóa 1 hoặc nhiều ký tự trong xâu để hai ký tự
liên tiếp trong xâu còn lại là khác nhau. *

***       Yêu cầu**: Tìm số ký tự ít nhất phải xóa? \
       **Ví dụ**: Xâu ký tự ABAA có thể thành xâu ABA thỏa mãn điều kiện
đề bài bằng cách xóa đi 1 ký tự. \
**       Dữ liệu vào:** Vào từ file văn bản **BAI2.INP** *

-   *Dòng 1: Số test  t (0 \< t \< 10) *

-   *T dòng tiếp theo mỗi dòng chứa 1 xâu kí tự S độ dài không quá  255
    > ký tự *

*   **     Kết quả ra:** ghi trên t dòng của file văn bản **BAI2.OUT**,
dòng thứ i  là số ký tự ít nhất cần xóa của xâu thứ i. *

*        **Ví dụ:** *

+------------------+-------------------+------------------------------+
| ***BAI2.INP** *  | ***BAI2.OUT** *   | *** Giải thích** *           |
+==================+===================+==============================+
| *5 *             | *3 *              | *AAAA -\> A ( 3 kí tự ) *    |
|                  |                   |                              |
| *AAAA *          | *4 *              | *BBBBB -\> B ( 4 kí tự ) *   |
|                  |                   |                              |
| *BBBBB *         | *0 *              | *ABABABAB -\> ABABABAB *     |
|                  |                   |                              |
| *ABABABAB *      | *4 *              | *AAABBB -\> AB ( 4 kí tự ) * |
|                  |                   |                              |
| *AAABBB *        | *3 *              | *AABBCBAA -\> ABCBA ( 3 kí   |
|                  |                   | tự ) *                       |
| *AABBCBAA *      |                   |                              |
+------------------+-------------------+------------------------------+

*    *
