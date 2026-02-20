NGUYỄN VĂN THIẾT - THPT NGUYỄN ĐỨC CẢNH

> CAUHOI

**Bài 1: Trả tiền nước**

Công ty TNHH MTV kinh doanh nước sạch trên địa bàn một tỉnh quy định giá
bán nước sạch sinh hoạt cho các hộ dân cư trong địa bàn tỉnh như sau:

  -----------------------------------------------------------------------
  **Lượng nước sạch sử dụng (hộ/tháng)**                 **Giá bán
                                                         (đ/m^3^)**
  ------------------------------------------------------ ----------------
  Từ m^3^ thứ 1 đến m^3^ thứ 5                           6500

  Từ m^3^ thứ 6 đến m^3^ thứ 15                          7800

  Từ m^3^ thứ 16 đến m^3^ thứ 25                         9200

  Từ m^3^ thứ 26 trở lên                                 10300
  -----------------------------------------------------------------------

*(Giá bán trên chưa bao gồm thuế VAT và phí nước thải)*

Tính số tiền phải trả cho công ty nước sạch của một hộ gia đình trong
một tháng, biết rằng thuế VAT và phí nước thải là 12%.

**Dữ liệu:** Nhập từ tệp số nguyên dương $N\ (0 < N \leq 1000)$ là số
m^3^ nước sạch mà một hộ gia đình dùng trong một tháng.

**Kết quả:** In ra tệp ba giá trị tương ứng trên ba dòng, mỗi số gồm hai
chữ số thập phân.

-   *Dòng 1*: Số tiền tương ứng với giá bán nước của công ty.

-   *Dòng 2*: Số tiền tương ứng với thuế VAT và phí nước thải.

-   *Dòng 3:*Tổng số tiền nước mà hộ gia đình đó phải trả trong tháng
    đó.

**Ví dụ:**

+---------------------------------+------------------------------------+
| **BAI1.INP**                    | **BAI1.OUT**                       |
+=================================+====================================+
| 5                               | 32500.00                           |
|                                 |                                    |
|                                 | 3900.00                            |
|                                 |                                    |
|                                 | 36400.00                           |
+---------------------------------+------------------------------------+

*Ghi chú:* Bài được chấm qua 10 test, mỗi test đúng được 0,25 điểm.

> **Dap an**

**var**

**N, G, VAT: double;**

**Fi,fo:text;**

**BEGIN**

**Assign(fi,\'bai1.inp\');reset(fi);**

**Assign(fo,\'bai1.out\');rewrite(fo);**

**read(fi,N);**

**if N\<=5 then G:=N\*6500 else**

**if N\<=15 then G:=5\*6500+(N-5)\*7800 else**

**if N\<=25 then G:=5\*6500+10\*7800+(N-15)\*9200**

**else G:=5\*6500+10\*7800+10\*9200+(N-25)\*10300;**

**VAT:=G\*12/100;**

**writeln(fo,G:0:2);**

**writeln(fo,VAT:0:2);**

**writeln(fo,G+VAT:0:2);**

**close(fi);**

**close(fo);**

**END.**
