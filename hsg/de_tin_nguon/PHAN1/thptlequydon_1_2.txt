**Đỗ Văn Hồng -- THPT Lê Quý Đôn**

**Phần 3.2:**

Cho 2 dãy số nguyên:

Dãy a gồm n phần tử và dãy b gồm m phần tử (m\<=n).

Yêu cầu: có thể xóa khỏi dãy a một số phần tử sao cho các phần tử còn
lại (giữ nguyên trật tự ban đầu) chính là dãy b.

Dữ liệu: Vào cho trong tệp TIAM.INP:

\- Dòng thứ nhất: Ghi giá trị hai số n, m tương ứng với số lượng phần tử
trong dãy a và dãy b (0\<n, m \<151).

\- Dòng thứ 2: Ghi giá trị các phần tử của dãy a.

\- Dòng thứ 3: Ghi giá trị các phần tử của dãy b.

Các phần tử trên cùng một dòng được ghi cách nhau duy nhất một dấu cách
trống.

Kết quả: Ghi ra tệp TIAM.OUT: Có 2 trường hợp

\- Trường hợp 1 (thực hiện được): Dòng đầu ghi 'CO'; dòng thứ hai ghi vị
trí các phần tử bị xóa trong dãy a. Các vị trí này được ghi cách nhau
duy nhất bởi một dấu cách trống.

\- Trường hợp 2 (không thực hiện được): Ghi 'KHONG'

**Ví dụ**:

+-----------------------------------+-----------------------------------+
| **TIAM.INP**                      | **TIAM.OUT**                      |
+===================================+===================================+
| 6 4                               | CO                                |
|                                   |                                   |
| 6 15 8 75 8 9                     | 2 5                               |
|                                   |                                   |
| 6 8 75 9                          |                                   |
+-----------------------------------+-----------------------------------+
| 6 4                               | KHONG                             |
|                                   |                                   |
| 15 6 7 8 9 30                     |                                   |
|                                   |                                   |
| 6 8 9 7                           |                                   |
+-----------------------------------+-----------------------------------+
