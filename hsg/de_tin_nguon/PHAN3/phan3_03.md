VŨ THỊ HẠNH -- TRƯỜNG THPT THÁI PHIÊN

CÂU HỎI

**[Bài 3:]{.underline}** **QUAN HỆ HUYẾT THỐNG**

Trung tâm nghiêm cứu gen thu thập N mẫu gen của N cá thể trong cùng một
loài. N gen này được mã hoá thành dãy N số nguyên dương **a~1~, a~2~,
..., a~N~**. Bộ phận phân tích sau khi xem xét đã đưa ra được kết luận
sau:

*Hai cá thể là có quan hệ huyết thống gần khi và chỉ khi mã gen của
chúng biểu diễn trong cơ số 2 giống nhau hoặc khác nhau đúng 1 bit*

Ví dụ: Hai cá thể có mã gen 7 (biểu diễn trong cơ số 2 là 111) và 5
(biểu diễn trong cơ số 2 là 101) là có quan hệ huyết thống gần.

Hãy đếm xem trong số mẫu gen của N cá thể thu thập được có bao nhiêu cặp
cá thể có quan hệ huyết thống gần.

*Dữ liệu:* Vào từ file văn bản BAI3.INP

-   Dòng đầu tiên ghi số nguyên dương N (N≤10^5^)

-   N dòng tiếp theo, dòng thứ i ghi mã gen của cá thể thứ i là một số
    nguyên dương trong phạm vi từ 1 đến 1000)

*Kết quả:* Ghi ra file văn bản BAI3.OUT một số nguyên duy nhất là số cặp
có quan hệ huyết thống gần đã tìm được.

*Ví dụ:*

+------------------------------------+---------------------------------+
| BAI3.INP                           | BAI3.OUT                        |
+------------------------------------+---------------------------------+
| 5                                  | 4                               |
|                                    |                                 |
| 1                                  |                                 |
|                                    |                                 |
| 2                                  |                                 |
|                                    |                                 |
| 3                                  |                                 |
|                                    |                                 |
| 4                                  |                                 |
|                                    |                                 |
| 5                                  |                                 |
+------------------------------------+---------------------------------+
| 3                                  | 3                               |
|                                    |                                 |
| 10                                 |                                 |
|                                    |                                 |
| 10                                 |                                 |
|                                    |                                 |
| 10                                 |                                 |
+------------------------------------+---------------------------------+

[Giải thích ví dụ thứ nhất:]{.underline}

Các số 1, 2, 3, 4, 5 biểu diễn trong cơ số 2 lần lượt là 001, 010, 011,
100, 101. Có 4 cặp có quan hệ huyết thống gần là:

1 và 3, 1 và 5, 2 và 3, 4 và 5

[Ghi chú:]{.underline} Có ít nhất 50% số điểm ứng với các test có N≤1000

ĐÁP ÁN

**[BÀI 3]{.underline}**

program BAI3;

var d: array\[1..1000\] of longint;

n: longint;

function anhem(x,y: longint): boolean;

var z, dem: longint;

begin

z:=x xor y;

dem:=0;

repeat

dem:=dem+z mod 2;

z:=z div 2;

until z=0;

anhem:=(dem\<=1);

end;

var kq,i,j,u: longint;

BEGIN

assign(input,\'GEN.INP\'); reset(input);

assign(output,\'GEN.OUT\'); rewrite(output);

read(n);

for i:=1 to 1000 do d\[i\]:=0;

for i:=1 to n do

begin

read(u);

inc(d\[u\]);

end;

kq:=0;

for i:=1 to 1000 do

if d\[i\]\<\>0 then

begin

kq:=kq+d\[i\]\*(d\[i\]-1) div 2;

for j:=i-1 downto 1 do

if (d\[j\]\<\>0) and anhem(i,j) then

kq:=kq+d\[i\]\*d\[j\];

end;

writeln(kq);

close(input); close(output);

END.
