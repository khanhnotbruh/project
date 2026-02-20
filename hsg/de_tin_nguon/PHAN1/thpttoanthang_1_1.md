Vũ Văn Lưu -- THPT Toàn Thắng

CAUHOI

**Bài 1: Giải phương trình (6 điểm)**

Tìm số nguyên x,y (x,y\>0) thỏa mãn phương trình sau: ax+by =c.

**Dữ liệu vào**: Cho tệp văn bản **BAI1.INP** chứa 3 số nguyên a,b,c
(0\<a,b,c≤10^6^).

**Dữ liệu ra**: Ghi ra tệp văn bản **BAI1.OUT** các cặp số nguyên x, y
là nghiệm của phương trình, mỗi cặp số trên một dòng và hai số cách nhau
một dấu cách. Nếu không có cặp x,y nào thỏa mãn thì ghi 0

**Ví dụ:**

+----------------------------------+-----------------------------------+
| **BAI1.INP**                     | **BAI1.OUT**                      |
+==================================+===================================+
| **1 1 1**                        | **0**                             |
+----------------------------------+-----------------------------------+
| **1 2 3**                        | **1 1**                           |
+----------------------------------+-----------------------------------+
| **1 1 4**                        | **1 3**                           |
|                                  |                                   |
|                                  | **2 2**                           |
|                                  |                                   |
|                                  | **3 1**                           |
+----------------------------------+-----------------------------------+

**Các ràng buộc:**

*100% số test tương ứng với 100% số điểm có:* *0\< a, b, c ≤ 10^6^*

DAPAN

Lời giải tham khảo:

program bai1;

const fi=\'bai1.inp\';

fo=\'bai1.out\';

var f1,f2:text;

x,y,a,b,c: longint;

begin

assign(f1,fi);reset(f1);

assign(f2,fo);rewrite(f2);

readln(f1,a,b,c);

y:=1;x:=0;

while (c \> b\*y) do

begin

if (c-b\*y) mod a= 0 then

x:= (c-b\*y) div a;

if x\<\>0 then writeln(f2,x,\' \',y);

inc(y);

end;

if x=0 then write(f2,0);

close(f1);

close(f2);

end.
