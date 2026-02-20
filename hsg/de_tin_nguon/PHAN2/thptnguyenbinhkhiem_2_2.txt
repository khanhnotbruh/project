**Nguyễn Bá Giầu - THPT Nguyễn Bỉnh Khiêm**

**Câu hỏi: Xâu Palin.pas**

Cho một xâu ký tự gồm các chữ cái tiếng Anh in thường. Bạn hãy cho biết
có thể hoán vị các ký tự trong xâu đã cho để thành 1 xâu palindrome được
không?

**Dữ liệu vào**:

-   Dòng 1: Số test $t\ (1 \leq t \leq 10)$

-   $t$ nhóm 2 dòng tiếp theo, dòng 1 chứa xâu a, dòng 2 chữa xâu b. Độ
    dài mỗi xâu không quá 100 000 ký tự.

**Kết quả ra**: ghi trên $t$ dòng, dòng $i$ là kết quả test $i$, ghi YES
nếu có thể hoán vị thành xâu palindrome, ghi NO nếu không.

**Ví dụ**

+--------------------+--------------+---------------------------------+
| **Palin.inp**      | *            | **Giải thích**                  |
|                    | *Palin.out** |                                 |
+====================+==============+=================================+
| 3                  | YES          | Test 1: hoán vị thành xâu       |
|                    |              | $bbaaabb$                       |
| aaabbbb            | NO           |                                 |
|                    |              | Test 3: hoán vị thành xâu       |
| cdefghmnopqrstuvw  | YES          | $ddcceefeeccdd$                 |
|                    |              |                                 |
| cdcdcdcdeeeef      |              |                                 |
+--------------------+--------------+---------------------------------+
