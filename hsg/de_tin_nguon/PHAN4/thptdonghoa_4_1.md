Trần Thị Thương -- THPT Đồng Hòa

> CAUHOI

**Bài 4: Từ phát sinh**

Viết chương trình đưa ra tất cả các từ có thể có phát sinh từ một tập
các chữ cái.

Ví dụ: Cho từ "abc", chương trình của bạn phải đưa ra được các từ
\"abc\", \"acb\", \"bac\", \"bca\", \"cab\" và \"cba\" (bằng cách khảo
sát tất cả các trường hợp khác nhau của tổ hợp ba chữ cái đã cho).

***Dữ liệu vào:***

Dữ liệu vào được cho trong tệp b4dinp.txt chứa một số từ. Dòng đầu tiên
là một số tự nhiên cho biết số từ được cho ở dưới. Mỗi dòng tiếp theo
chứa một từ. Trong đó, một từ có thể chứa cả chữ cái thường hoặc hoa từ
A đến Z. Các chữ thường và hoa được coi như là khác nhau. Một chữ cái
nào đó có thể xuất hiện nhiều hơn một lần.

# *Dữ liệu ra:*

Với mỗi từ đã cho trong file b4dinp.txt, kết quả nhận được ra file
b3dout.txt phải chứa tất cả các từ khác nhau được sinh từ các chữ cái
của từ đó. Các từ được sinh ra từ một từ đã cho phải được đưa ra theo
thứ tự tăng dần của bảng chữ cái.

***Ví dụ:***

+-----------------------------------+-----------------------------------+
| b1dinp.txt                        | b1dout.txt                        |
+===================================+===================================+
| 2                                 | abc                               |
|                                   |                                   |
| abc                               | acb                               |
|                                   |                                   |
| acba                              | bac                               |
|                                   |                                   |
|                                   | bca                               |
|                                   |                                   |
|                                   | cab                               |
|                                   |                                   |
|                                   | cba                               |
|                                   |                                   |
|                                   | aabc                              |
|                                   |                                   |
|                                   | aacb                              |
|                                   |                                   |
|                                   | abac                              |
|                                   |                                   |
|                                   | abca                              |
|                                   |                                   |
|                                   | acab                              |
|                                   |                                   |
|                                   | acba                              |
|                                   |                                   |
|                                   | baac                              |
|                                   |                                   |
|                                   | baca                              |
|                                   |                                   |
|                                   | bcaa                              |
|                                   |                                   |
|                                   | caab                              |
|                                   |                                   |
|                                   | caba                              |
|                                   |                                   |
|                                   | cbaa                              |
+-----------------------------------+-----------------------------------+
