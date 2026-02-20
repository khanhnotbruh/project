Vũ Thị Lê -- Trường THPT Vĩnh Bảo

CAUHOI

Cho dãy số gồm có N số nguyên dương a~1~, a~2~,\..., a~N~ và một số
nguyên dương K.

*Yêu cầu:* Hãy cho biết số lượng các phần tử có giá trị nhỏ hơn K là số
nguyên tố của dãy số trên.

Dữ liệu vào*:* Vào từ File văn bản BAI2.INP gồm:

> \- Dòng đầu tiên là hai số N và K.
>
> \- Dòng tiếp theo lần lượt là N số nguyên của dãy số.

Dữ liệu ra*:* Ghi ra File BAI2.OUT gồm duy nhất số M là số lượng các
phần tử của dãy số thoả mãn yêu cầu đề bài.

*Giới hạn:* 0 \< N \< 50000; 0 \< K, a~i~ \< 5000 ∀i = 1..N;

*Ví dụ:*

+-----------------------------------+----------------------------------+
| BAI2.INP                          | BAI2.OUT                         |
+===================================+==================================+
| 7 8                               | 3                                |
|                                   |                                  |
| 1 2 3 8 7 6 11                    |                                  |
+-----------------------------------+----------------------------------+

DAPAN

  ----------------------------------------------------------------------------
  **Test   **Điểm**   **Đặc điểm test**
  số**                
  -------- ---------- --------------------------------------------------------
  1        1,0        INPUT theo đầu bài

  2        2,0        Cho N, K \>=256

  3        1,0        Cho dãy không có số nguyên tố nào

  4        2,0        Cho dãy có các số nguyên tố lớn hơn K
  ----------------------------------------------------------------------------
