**Phạm Đức Cường -- THPT An Dương**

**[Bài 2]{.underline}: TÁCH XÂU** (Tên chương trình nguồn **BAI1.PAS**)

Cho một xâu ký tự S1, S2 (độ dài S2 ≤ S1 ≤ 250) bao gồm các ký tự chữ và
ký tự số.

**Yêu cầu:**

a)  Tách các kí tự chữ số trong xâu S1 (giữ nguyên trật tự ban đầu).

b)  Kiểm tra xâu S2 có xuất hiện trong S1 không? Nếu có: Tách trong xâu
    S1 từ vị trí xâu S2 xuất hiện (đầu tiên) đến cuối S1.

**Dữ liệu:** Vào từ file văn bản **BAI1.INP** gồm:

-   Dòng thứ nhất: Ghi chuỗi S1.

-   Dòng thứ 2 : Ghi chuỗi S2.

**Kết quả:** Ghi ra tệp văn bản **BAI1.OUT**:

-   Dòng thứ nhất: Ghi lien tiếp các chữ số tách được trong S1 (giữ
    nguyên trật tự ban đầu). Nếu không có số nào trong xâu, ghi '‼!'

-   Dòng thứ 2: Ghi đoạn con tách được trong xâu S1 từ vị trí xâu S2
    xuất hiện trở về cuối. Trong trường hợp xâu S2 không xuất hiện trong
    S1 ghi '‼!'

**Ví dụ:**

+------------------------------------------+---------------------------+
| **BAI1.INP**                             | **BAI1.OUT**              |
+==========================================+===========================+
| Tran Nam -- SN: 15/05/1995 -- QQ: Hai    | 15051995                  |
| Phong                                    |                           |
|                                          | Hai Phong                 |
| Hai                                      |                           |
+------------------------------------------+---------------------------+
| Tran Nam -- SN: 15/05/1995 -- QQ: Hai    | 15051995                  |
| Phong                                    |                           |
|                                          | ‼!                        |
| Hia                                      |                           |
+------------------------------------------+---------------------------+
