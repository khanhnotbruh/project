NGUYỄN THỊ TÂM \_ THPT Phạm Ngũ Lão

**CAUHOI**

**BÀI 3:** Số siêu chẵn (8 đ)

Cho một mảng số nguyên A gồm các phần tử. (1\<=N\<=300); Hãy đếm xem
trong mảng có bao nhiêu số siêu chẵn.

Biết một số được gọi là siêu chẵn nếu biễu diễn thập phân của nó có
nhiều hơn một chữ số đồng thời các chữ số của nó đều bằng nhau và là số
chẵn.

***Dữ liệu vào:*** Đọc từ file văn bản sieuchan.inp

-   Dòng đầu: ghi giá trị N

-   N dòng tiếp theo, lần lượt ghi giá trị của các phần tử mảng A
    (ai\<=100000).

***Dữ liệu ra:*** Kết quả ghi vào file văn bản sieuchan.out số lượng số
siêu chẵn trong mảng A.

***Ví dụ:***

+----------------------------------------+-----------------------------+
| sieuchan.inp                           | sieuchan.out                |
+========================================+=============================+
| 6                                      | 3                           |
|                                        |                             |
| 17                                     |                             |
|                                        |                             |
| **66**                                 |                             |
|                                        |                             |
| **2222**                               |                             |
|                                        |                             |
| 4                                      |                             |
|                                        |                             |
| **888**                                |                             |
|                                        |                             |
| 72                                     |                             |
+----------------------------------------+-----------------------------+

**ĐÁP ÁN:**

VAR f1,f2: text;

i,d,n: longint;

A: array\[1..300\] of longint;

FUNCTION sieuchan(k: longint): boolean;

var t,h: longint;

begin

t:=0;h:= -1;

if k\<=9 then exit(false);

while k \<\> 0 do

begin

t:= k mod 10;

if h=-1 then h:= t;

if (t mod 2 \<\> 0) or (t\<\>h) then exit(false);

k:= k div 10;

end;

exit(true);

end;

BEGIN

assign(f1,\'sieuchan.inp\');reset(f1);

assign(f2,\'sieuchan.out\');rewrite(f2);

readln(f1,N);

d:= 0;

for i:= 1 to n do

begin

readln(f1,A\[i\]);

if sieuchan(A\[i\]) then inc(d);

end;

writeln(f2,d);

close(f1);

close(f2);

END.
