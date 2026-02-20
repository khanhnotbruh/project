Trần Thị Thương -- THPT Đồng Hòa

CAUHOI

**Bài 4. Mật khẩu**

An thường xuyên tham gia thi lập trình trên mạng. Vì đạt được thành tích
cao nên An được gửi tặng một phần mềm diệt virus. Nhà sản xuất phần mềm
cung cấp cho An một mã số là một dãy gồm các bộ ba chữ số ngăn cách nhau
bởi dấu chấm và có chiều dài không quá 255 (kể cả chữ số và dấu chấm).
Để cài đặt được phần mềm, An phải nhập vào mật khẩu của phần mềm. Mật
khẩu là một số nguyên dương M được tạo ra bằng cách tính tổng giá trị
các bộ ba chữ số trong dãy mã số, các bộ ba này được đọc từ phải sang
trái.

**Yêu cầu:** Cho biết mã số của phần mềm, hãy tìm mật khẩu của phần mềm
đó.

**Dữ liệu vào:** Cho từ tệp văn bản có tên **BAI1.INP** gồm một dòng
chứa xâu ký tự S (độ dài xâu không quá 255 ký tự) là mã số của phần mềm.

**Kết quả:** Ghi ra tệp văn bản có tên **BAI1.OUT** gồm một số nguyên là
mật khẩu tìm được.

# Ví dụ:

+----------------------------------+-----------------------------------+
| > **BAI1.INP**                   | > **BAI2.OUT**                    |
+==================================+===================================+
| > 218.042.693                    | > 1448                            |
+----------------------------------+-----------------------------------+

> Giải thích: Mật khẩu 1448 là tổng các số 812 + 240 + 396.
