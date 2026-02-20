Phạm Minh Khôi -- THPT Đồ Sơn

CAUHOI

**Bài 1. PHỤC HỒI DỮ LIỆU**

Bạn Bi mới học lập trình nhập xuất các số thực với định dạng X:M:N.
Trong đó X là số cần biểu diễn; M là chiều dài của số; N là phần thập
phân. Nhưng trong qúa trình ghi câu lệnh xuất ra tệp Bi quên không cho
khoảng trắng nên khi mở lại tập tin đó, Bi thấy các con số này dính liền
vào nhau. Hãy giúp bạn tách các số đó thành các số ban đầu.

Dữ liệu: vào từ File BAI1.INP :

\- Dòng 1 Ghi số lượng chữ số của một số;

\- Dòng 2 chứa dãy số cần xử lý;

Ghi ra file: BAI1.OUT :

\- Dòng 1 là dãy số thu được sau xử lý, mỗi số ngăn cách một khoảng
trống.

\- Dòng 2 là số lượng chữ số bị dính hay số lượng chữ số sau khi tách.

+--------------------------------------------------+-------------------+
| BAI2.INP                                         | BAI2.OUT          |
+==================================================+===================+
| 6                                                | 193.44 567.68     |
|                                                  |                   |
| 193.44567.68                                     | 2                 |
+--------------------------------------------------+-------------------+

DAPAN

**Bài 1 (6 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu**                               |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 1 | 1  | 1.2 | -   Xâu ký tự có độ dài tối đa 255 ký tự        |
|       | -5 |     |                                                 |
| (6    |    |     | -   Thời gian chạy tối đa 0.5 giây              |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+

Bai1.py

with open(\"Bai1.inp\") as fi:

n=int(fi.readline())

s= fi.readline()

with open(\"Bai1.out\",\'w\') as fo:

s=list(map(\'\'.join, zip(\*\[iter(s)\]\*n)))

s=\" \".join(s)

fo.write(s + \"\\n\")

fo.write(str(s.count(\" \")+1))
