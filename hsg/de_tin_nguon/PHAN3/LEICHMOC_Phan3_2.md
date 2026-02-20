Nguyễn Đăng Hiệp - Trường THPT Lê Ích Mộc

CAUHOI

**Đồng phục**

Trong tiết mục đồng diễn ở buổi khai mạc hội khỏe phù đổng huyện Thủy
Nguyên. Có N trường học tham gia, mỗi trường đều mặc đồng phục của
trường mình và được đánh mã. Mã trường là một số nguyên dương không quá
10^6^

**Dữ liệu vào:** đọc từ tệp Bai3.INP gồm

Dòng đầu ghi số nguyên dượng N (N\<10^6^)

Dòng thứ 2 là N số nguyên dương A~i~ là mã của các trường (A~i~\<10^6^)

Dữ liệu ra : Là số lượng đồng phục có mã đồng phục giống nhau nhiều nhất
(trường có đông học sinh nhất) được ghi ra tệp Bai3.OUT

+-----------------------+-----------------------+-----------------------+
| **Bai3.INP**          | **Bai3.OUT**          | **Giải thích**        |
+=======================+=======================+=======================+
| 8                     | 3                     | Mã 1 và 5 có cùng số  |
|                       |                       | lượng nhiều nhất là 3 |
| 1 3 1 5 3 5 5 1       |                       |                       |
+-----------------------+-----------------------+-----------------------+

DAPAN

Const fi='Bai3.INP';

fo='bai3.OUT';

Var i,j,n,max:longint;

A:array\[0..10000001\] of Longint;

f1,f2:text;

BEGIN

Assign(f1,fi);reset(f1);

Assign(f2,fo);rewrite(f2);

Read(f1,N);

Max:=0;

For i:=1 To N Do

Begin

Read(f1,j);

Inc(a\[j\]);

If a\[j\] \>max then max:=a\[j\];

End;

Write(f1,max);

Close(f1);close(f2);

END.
