Trần Thị Hằng Nga -- Trường THPT Vĩnh Bảo

CAUHOI

Cho 1 dãy số có N phần tử là các số nguyên (A\[1\], A\[2\], .., A\[n\])
với 2≤N≤200, hãy sắp xếp dãy sao cho có thể thu được tổng S lớn nhất (S
= tổng các A\[i\] với i lẻ trừ đi tổng các A\[i\] với i chẵn).

**Yêu cầu:** In ra tổng S lớn nhất có thể.

Giả sử: dãy 1, 2, 3, 4 có S = 1 -- 2 + 3 -- 4 = - 2.

Dữ liệu vào: Cho trong tệp BAI2.INP:

-   Dòng đầu: Ghi số N (số lượng các phần tử của dãy A).

-   Dòng tiếp theo ghi lần lượt giá trị các phần tử của dãy A (A~1~ ..
    > A~N~), các phần tử ghi cách nhau bởi dấu cách trống.

> **Kết quả:** Ghi ra tệp BAI2.OUT: Ghi giá trị của tổng S lớn nhất có
> thể theo yêu cầu đề bài.

**Ví dụ:**

+----------------------------------+-----------------------------------+
| **BAI2.INP**                     | **BAI2.OUT**                      |
+==================================+===================================+
| 6                                | 12                                |
|                                  |                                   |
| 1 3 4 3 5 10                     |                                   |
+----------------------------------+-----------------------------------+

DAPAN

Sinh test tuỳ ý giám khảo, chấm 5 test.

  -----------------------------------------------------------------------------
  **Test   **Điểm**   **Đặc điểm test**
  số**                
  -------- ---------- ---------------------------------------------------------
  1        1,0        INPUT theo đầu bài

  2        1,0        Dãy A gồm N phần tử có giá trị bằng nhau (N chẵn , lẻ)

  3        2,0        Dãy A có N phần tử dương có giá trị bất kỳ (N chẵn, lẻ)

  4        2,0        Dãy A có N phần tử âm, dương xen kẽ (N chẵn, lẻ)

  5        2,0        Dãy A có nửa đầu là số âm và nửa cuối là số dương ( ngược
                      lại) ( N chẵn, lẻ)
  -----------------------------------------------------------------------------
