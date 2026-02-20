Nguyễn Văn Dũng - THPT An Lão

CAUHOI

**Bài 1 (6 điểm):**

Cho hai xâu X và Y. Ta định nghĩa xâu con như sau: Xâu Y được gọi là xâu
con của xâu X nếu trong xâu X ta xóa đi một số kí tự thì sẽ thu được xâu
Y (số kí tự xóa có thể bằng 0).

Ví dụ: Cho xâu X = '1A2B3CD4EF5G' và xâu Y = '12345', ta nói Y là một
xâu con của xâu X vì trong xâu X nếu xóa các kí tự ở những vị trí 2, 4,
6, 7, 9, 10, 12 thì sẽ thu được xâu Y.

**Yêu cầu**: Cho trước hai xâu X và Y, hãy kiểm tra xem xâu Y có là xâu
con của xâu X không? Nếu có, thì chỉ ra những vị trí nào trong xâu X cần
xóa kí tự để thu được xâu Y.

**Dữ liệu**: Vào từ tập tin văn bản **XAUCON.INP** gồm hai dòng:

-   Dòng thứ nhất là xâu X (không quá 500 kí tự);

-   Dòng thứ hai là xâu Y (không quá 500 kí tự).

**Kết quả**: Ghi ra tập tin văn bản **XAUCON.OUT** gồm:

-   Dòng dầu ghi 'CO' nếu xâu Y là xâu con của xâu X, ngược lại ghi
    'KHONG';

-   Nếu dòng đầu là 'CO' thì các dòng tiếp theo ghi danh sách các vị trí
    trong xâu X cần xóa kí tự để thu được xâu Y hoặc ghi 0 nếu không cần
    xóa bất kì kí tự nào trong xâu X.

Ví dụ:

+-----------------------------------+----------------------------------+
| **XAUCON.INP**                    | **XAUCON.OUT**                   |
+===================================+==================================+
| HTOIINTHHIOLCATTRHUE28            | CO                               |
|                                   |                                  |
| TINHOCTRE                         | 1                                |
|                                   |                                  |
|                                   | 3                                |
|                                   |                                  |
|                                   | 5                                |
|                                   |                                  |
|                                   | 7                                |
|                                   |                                  |
|                                   | 9                                |
|                                   |                                  |
|                                   | 10                               |
|                                   |                                  |
|                                   | 12                               |
|                                   |                                  |
|                                   | 14                               |
|                                   |                                  |
|                                   | 16                               |
|                                   |                                  |
|                                   | 18                               |
|                                   |                                  |
|                                   | 19                               |
|                                   |                                  |
|                                   | 21                               |
|                                   |                                  |
|                                   | 22                               |
+-----------------------------------+----------------------------------+
| HOITHITINHOCTRE                   | KHONG                            |
|                                   |                                  |
| THCS                              |                                  |
+-----------------------------------+----------------------------------+
| ABCDEF                            | CO                               |
|                                   |                                  |
| ABCDEF                            | 0                                |
+-----------------------------------+----------------------------------+

DAPAN

**Bài 1 (6 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu**                               |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 1 | 1  | 1   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
| (6    |    |     |                                                 |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+
|       | 2  | 1   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
|       | 3  | 1   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
|       | 4  | 1   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
|       | 5  | 1   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
|       | 6  | 1   | Xử lý được file input và output, thời gian chạy |
|       |    |     | tối đa 1 giây                                   |
+-------+----+-----+-------------------------------------------------+
