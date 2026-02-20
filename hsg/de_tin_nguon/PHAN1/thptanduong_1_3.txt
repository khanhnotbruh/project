**Phạm Đức Cường -- THPT An Dương**

**[Bài 2]{.underline}:**

Một dãy dấu ngoặc hợp lệ là một dãy các kí tự "( "và ")" được định nghĩa
như sau:

\- Dãy rỗng( không có kí tự nào ) là một dãy dấu ngoặc hợp lệ.

\- Nếu A là một dãy dấu ngoặc hợp lệ thì (A) là dãy dấu ngoặc hợp lệ.
Dấu ngoặc mở và dấu ngoặc đóng hai bên dãy A được gọi là tương ứng với
nhau.

\- Nếu A và B là hai dãy dấu ngoặc hợp lệ thì AB cũng là dãy dấu ngoặc
hợp lệ.

Ví dụ: ( ( ( ) ) ) ( ( ) ) ( ) ( ) là dãy dấu ngoặc hợp lệ, các dấu mở
ngoặc ở vị trí: 1,2,3,7,8,11,13 tương ứng lần lượt với các dấu ngoặc
đóng ở vị trí: 6,5,4,10,9,12,14. Ban đầu có một dãy dấu ngoặc hợp lệ,
người ta viết vào sau mỗi dấu ngoặc mở một số là số dấu ngoặc ( cả đóng
và mở) nằm giữa trong dấu ngoặc mở đó và dẫu ngoặc đóng tương ứng:

( ( ( ) ) ) ( ( ) ) ( ) ( )

4 2 0 2 0 0 0

Sau đó xóa đi dãy ngoặc.

**[Yêu cầu :]{.underline}** Cho biết dãy số còn lại, hãy khôi phục lại
dãy ngoặc ban đầu.

Dữ liệu vào : file BRACKET.INP gồm:

\- Dòng đầu ghi số n là số phần tử của dãy số còn lại(n\<=10000).

\- Dòng2 ghi lần lượt các số trong dãy.

Dữ liệu ra : file BRACKET.OUT : ghi dãy dấu ngoặc khôi phục được.

Ví dụ :

+----------------------------------+-----------------------------------+
| BRACKET.INP                      | BRACKET.OUT                       |
+==================================+===================================+
| 7                                | ( ( ( ) ) ) ( ( ) ) ( ) ( )       |
|                                  |                                   |
| 4 2 0 2 0 0 0                    |                                   |
+----------------------------------+-----------------------------------+

+----------------------------------+-----------------------------------+
| BRACKET.INP                      | BRACKET.OUT                       |
+==================================+===================================+
| 10                               | ( ( ( ) ) ( ) ( ) ) ( ( ) ( ) ) ( |
|                                  | ) ( )                             |
| 8 2 0 0 0 4 0 0 0 0              |                                   |
+----------------------------------+-----------------------------------+
