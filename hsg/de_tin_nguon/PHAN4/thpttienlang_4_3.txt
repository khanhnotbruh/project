**Lê Văn Quỳnh -- THPT Tiên Lãng**

**CAUHOI**

**Bài 4**. ***Đặt tên chương trình nguồn là BAI4.PAS***

Cho một mảng số nguyên A gồm N phần tử. Hãy đếm xem trong mảng có bao
nhiêu số bậc thang. Biết một số được gọi là bậc thang nếu biểu diễn thập
phân của nó có nhiều hơn một chữ số đồng thời theo chiều từ trái qua
phải, chữ số đứng sau không nhỏ hơn chữ số đứng trước.

**Dữ liệu vào:** Cho trong tệp BAI3.INP:

-   Dòng thứ nhất: Ghi giá trị của N (số lượng các phần tử trong mảng
    A).

-   N dòng tiếp theo, lần lượt ghi giá trị các phần tử của mảng A;

**Kết quả ra:** Ghi ra tệp BAI3.OUT: Ghi số lượng những số bậc thang
trong mảng A.

**Ví dụ:**

+----------------------------------+-----------------------------------+
| BAI3.INP                         | BAI3.OUT                          |
+==================================+===================================+
| > 6                              | 4                                 |
| >                                |                                   |
| > 15                             |                                   |
| >                                |                                   |
| > 79                             |                                   |
| >                                |                                   |
| > 1578                           |                                   |
| >                                |                                   |
| > 325                            |                                   |
| >                                |                                   |
| > 368                            |                                   |
| >                                |                                   |
| > 72                             |                                   |
+----------------------------------+-----------------------------------+

**DAPAN**

**Bài 4**

uses crt;

var a,b:array\[1..22\] of integer;

c,d,x,y,z:integer;

m,n:text; h: string;

begin

clrscr;

assign(m,\'bai3.inp\') ;assign(n,\'bai3.out\');

reset(m);rewrite(n);

readln(m,c);

for d:=1 to c do

readln(m,a\[d\]);

for d:=1 to c do

begin

str(a\[d\],h);if length(h)=1 then y:=5;

if length(h)\>1 then

for z:=1 to length(h)-1 do

if h\[z\]\> h\[z+1\] then y:=ord(\'2\');

if y=0 then x:=x+1;

end;

writeln(n,x);

close(m);close(n);

readln

end.
