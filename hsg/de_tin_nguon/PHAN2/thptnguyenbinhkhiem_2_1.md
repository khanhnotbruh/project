**Nguyễn Bá Giầu - THPT Nguyễn Bỉnh Khiêm**

**Câu hỏi: Xâu con (xaucon.pas)**

Cho hai xâu ký tự a và b. Hãy xác định xem hai xâu đã cho có xâu con
chung hay không?

**Dữ liệu vào**:

-   Dòng 1: Số test $t\ (1 \leq t \leq 10)$

-   $t$ nhóm 2 dòng tiếp theo, dòng 1 chứa xâu a, dòng 2 chữa xâu b. Độ
    dài mỗi xâu không quá 100 000 ký tự.

**Kết quả ra**: ghi trên $t$ dòng, dòng $i$ là kết quả test $i$, ghi YES
nếu a và b có xâu con chung, ghi NO nếu không.

**Ví dụ:**

+---------------+---------------+-------------------------------------+
| *             | *             | **Giải thích**                      |
| *Xaucon.inp** | *Xaucon.out** |                                     |
+===============+===============+=====================================+
| 2             | YES           | Test 1: xâu $a = happy$ và xâu      |
|               |               | $b = lucky$ có xâu con chung là     |
| happy         | NO            | $'y'$                               |
|               |               |                                     |
| lucky         |               |                                     |
|               |               |                                     |
| hi            |               |                                     |
|               |               |                                     |
| world         |               |                                     |
+---------------+---------------+-------------------------------------+
