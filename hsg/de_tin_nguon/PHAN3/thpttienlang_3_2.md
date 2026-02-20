**Đỗ Trọng Trung -- THPT Tiên Lãng**

**CAUHOI**

**Bài 3**. ***Đặt tên chương trình nguồn là BAI3.PAS***

**Tổng các số**

Cho dãy các số nguyên a~1~, a~2~, ... , a~N~. Hãy tính tổng N phần tử
của dãy và tìm phần tử có giá trị lớn nhất của dãy và đưa ra vị trí của
các phần tử có cùng giá trị lớn nhất.

**Dữ liệu:** Vào từ tệp văn bản SO.INP:

-   Chỉ một dòng chứa các số a~1~, a~2~, ... , a~N~ ghi cách nhau một
    dấu cách.

> (0 \< N ≤ 10000 ; \|a~i~\| ≤ 6.10^4^ với i = 1, 2, \..., N)

**Kết quả:** Ghi ra tệp văn bản SO.OUT có cấu trúc như sau:

-   Dòng thứ nhất ghi tổng các số của dãy.

-   Dòng thứ 2 ghi số lớn nhất.

-   Dòng thứ 3 ghi các vị trí xuất hiện của số lớn nhất.

-   Các số trên cùng một dòng ghi cách nhau một dấu cách.

***Ví dụ:***

+------------------------------------+---------------------------------+
| SO.INP                             | SO.OUT                          |
+====================================+=================================+
| 4 3 2 1 0 8 7 4 2 5 4 6 7 8 2 3 1  | 67                              |
|                                    |                                 |
|                                    | 8                               |
|                                    |                                 |
|                                    | 6 14                            |
+------------------------------------+---------------------------------+

**DAPAN**

**Program Bai3;**

**Uses crt;**

**Var** f:text; A:Array\[1..10000\] of integer;

N,s,max,i: integer;

**Begin**

Assign(f,'SO.INP');

Reset(f);

N:=1;

While not eof(f) do

Begin

> Read(f,a\[n\])
>
> Inc(n);
>
> End;

Close(f);

S:=0; max:=a\[1\];

For i:=1 to n-1 do

Begin

S:=S+a\[i\];

If a\[i\]\>max then max:=a\[i\];

> End;

Assign(f,'SO.OUT');

Rewrite(f);

Writeln(f,s);

Writeln(f,max);

For i:=1 to n-1 do

If a\[i\]=max then write(f,i,' ');

Close(f);

Readln;

**End.**
