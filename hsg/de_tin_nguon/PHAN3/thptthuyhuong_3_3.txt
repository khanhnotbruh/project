Vũ Thị Hồng Thư - THPT Thụy Hương

CAUHOI

**Bài 3. (8điểm): Số nguyên tố**

Nhà trường phát động phong trào đăng ký làm sáng tạo khoa học kỹ thuật,
tất cả các bạn trong lớp của Nguyên đều tích cực tham gia và được phân
công vào các nhóm đề tài. Một học sinh chỉ được tham gia một nhóm đề
tài. Mỗi nhóm đề tài được ký hiệu: \<Tên nhóm\> \<Số thành viên\>. Ví dụ
Nguyên được phân công vào nhóm TIN gồm 3 thành viên thì ký hiệu nhóm là
TIN 3.

> Danh sách được lập ra gồm ký hiệu nhóm và tên thành viên, nhưng trong
> quá trình in ấn cột ký hiệu nhóm bị mờ \<tên nhóm\> và không đọc được
> chỉ còn lại \<số thành viên\>.
>
> ***Ví dụ:***

+-------------+-------------+------------------+------+-------------+
| > **Ký      | > **Thành   |                  | >    | > **Thành   |
| > hiệu**    | > viên**    |                  | **hi | > viên**    |
|             |             |                  | ệu** |             |
+=============+=============+==================+======+=============+
| > TIN 3     | > Việt      |                  | 3    | > Việt      |
+-------------+-------------+------------------+------+-------------+
| > TOAN 2    | > Tuấn      |                  | 2    | > Tuấn      |
+-------------+-------------+------------------+------+-------------+
| > TIN 3     | > Thái      | > *Do lỗi in ấn  | 3    | > Thái      |
|             |             | > →*             |      |             |
+-------------+-------------+------------------+------+-------------+
| > TIN 3     | > Anh       |                  | 3    | > Anh       |
+-------------+-------------+------------------+------+-------------+
| > TOAN 2    | > Chính     |                  | 2    | > Chính     |
+-------------+-------------+------------------+------+-------------+

> ***\* Yêu cầu:*** Cho danh sách gồm N học sinh và số thành viên của
> nhóm tương ứng với từng học sinh. Hãy xác định số lượng nhóm đề tài đã
> được phân công.

***\* Dữ liệu:*** Vào từ file **Bai3.Inp** gồm:

\- Dòng đầu tiên ghi số N (số học sinh trong lớp);

> \- Dòng tiếp theo ghi N số là số thành thành viên của nhóm tương ứng
> với từng học sinh
>
> ***\* Kết quả:*** Ghi ra file **Bai3.Out** gồm 1 dòng duy nhất ghi số
> lượng nhóm đề tài.
>
> ***Ví dụ:***

+---------------------------------------+------------------------------+
| > **Bai3.Inp**                        | > **Bai3.Out**               |
+=======================================+==============================+
| > 5                                   | > 2                          |
| >                                     |                              |
| > 3 2 3 3 2                           |                              |
+---------------------------------------+------------------------------+
| > 10                                  | > 4                          |
| >                                     |                              |
| > 5 1 2 5 5 2 5 5 2 2                 |                              |
+---------------------------------------+------------------------------+

DAPAN

Chương trình nguồn

TYPE mang = array\[1..100\] of byte;

VAR t: text;

a: mang;

i,n,d: byte;

Procedure QS(Var a: mang;d,c: byte);

Procedure Sort(l,r: byte);

Var i,j,x,y: byte;

Begin

i:=l; j:=r; x:=a\[(l+r) div 2\];

Repeat

While (a\[i\]\<x) do inc(i);

While (a\[j\]\>x) do dec(j);

If i\<=j then

begin

y:=a\[i\];

a\[i\]:=a\[j\];

a\[j\]:=y;

inc(i);

dec(j);

end;

Until (i\>j);

If i\<r then Sort(i,r);

If l\<j then Sort(l,j);

End;

Begin

Sort(d,c);

End;

BEGIN

Assign(t,\'Bai3.INP\');

Reset(t);

Read(t,n);

For i:=1 to n do read(t,a\[i\]);

close(t);

Assign(t,\'Bai3.OUT\');

Rewrite(t);

QS(a,1,n);

i:=1; d:=0;

While (i\<=n) do

begin

inc(d);

inc(i,a\[i\]);

end;

Write(t,d);

close(t);

END.
