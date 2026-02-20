Trần Như Huy -- THPT Hải An

CAUHOI

**Thưởng 8-3**: Nhân dịp ngày lễ 8-3, Một công ty may mặc muốn chọn ra
ít nhất 3 nhân viên nữ có số lượng sản phẩm cao nhất trong năm để trao
thưởng. Trong trường hợp có nhiều nhân viên có cùng số lượng sản phẩm,
nếu một người được nhận thưởng thì tất cả những nhân viên còn lại đều
được nhận thưởng.

Yêu cầu: Tính số lượng nhân viên nữ được nhận quà của công ty.

Dữ liệu vào: Đọc dữ liệu THUONG.INP có cấu trúc như sau: dòng đầu tiên
ghi số nguyên n (n \< 10^6^) là số lượng nhân viên trong công ty, dòng
thứ hai nghi n số nguyên thuộc tập (0, 1) lần lượt là giới tính của n
nhân viên: 0 là nữ, 1 là nam. Dòng thứ ba ghi n số nguyên không âm có
giá trị không vượt quá 200 lần lượt là số lượng sản phẩm trong tháng của
từng nhân viên. Các số trong file ghi cách nhau dấu cách.

Kết quả: Ghi ra file THUONG.OUT một số duy nhất là số lượng nhân viên nữ
được nhận quà. Nếu không đủ nhân viên được nhận quà thì ghi 0

+---------------+---------------+-------------------------------------+
| THUONG.INP    | THUONG.OUT    | Giải thích                          |
+===============+===============+=====================================+
| 6             | 3             | Các nhân viên nữ được nhận quà là   |
|               |               | nhân viên số 2, 4, 5                |
| 1 0 1 0 0 0   |               |                                     |
|               |               |                                     |
| 5 2 3 4 2 1   |               |                                     |
+---------------+---------------+-------------------------------------+
| 6             | 4             | Các nhân viên nữ được nhận quà là   |
|               |               | nhân viên số 2, 4, 5, 6             |
| 1 0 1 0 0 0   |               |                                     |
|               |               |                                     |
| 5 2 3 4 2 2   |               |                                     |
|               |               |                                     |
| 1 1           |               |                                     |
+---------------+---------------+-------------------------------------+
