Vũ Thị Hồng Thư - THPT Thụy Hương

CAUHOI

**Bài 4. (10 điểm):**

Tại thành phố Hải Phòng có 1 trạm kiểm soát ô tô (các ô tô đều có biển
số là 5 chữ số), trong giờ cao điểm từ 16h đến 22h chỉ các ô tô có biển
số là số nguyên tố mới được đi vào thành phố. Tuy nhiên hệ thống nhận
dạng của các kỹ sư tin học trong thành phố HP lại bị sai, các biển số xe
ô tô đều bị nhận dạng ngược. **Ví dụ**: Biển số xe là 0003 thì bị nhận
dạng là 3000.

> Bạn hãy giúp thành phố Hải Phòng xác định chính xác có bao nhiêu ô tô
> có thể vào thành phố?
>
> **Dữ liệu**: Vào từ file văn bản **BAI4.INP**

\- Dòng 1: Số nguyên dương N tương ứng số lượng ô tô qua trạm kiểm soát.
(N ≤ 50.000)

\- Dòng tiếp theo gồm N số nguyên dương có 5 chữ số thập phân, tương ứng
là biển số xe bị đảo ngược (00001 ≤ biển số ≤ 99999). Mỗi số được ghi
cách nhau bởi một dấu cách.

> **Kết quả**: Ghi ra file văn bản **BAI4.OUT**

\- Một số duy nhất là số lượng xe có biển số là số nguyên tố?

> **Ví dụ:**

+------------------------------------------------+---------------------+
| **BAI4.INP**                                   | **BAI4.OUT**        |
+------------------------------------------------+---------------------+
| 4                                              | 2                   |
|                                                |                     |
| 30000 00013 80009 71000                        |                     |
+------------------------------------------------+---------------------+
| 5                                              | > 0                 |
|                                                |                     |
| 98760 44125 00981 42989 68689                  |                     |
+------------------------------------------------+---------------------+

DAPAN

Chương trình nguồn

TYPE mang = array\[1..50000\] of longword;

xau= string\[4\];

VAR t: text;

a: mang;

i,N,d: longword;

Function NTO(N: longword): boolean;

Var kt: boolean;

i: longword;

Begin

If N\<=1 then kt:= false

else

begin

kt:= true;

for i:=2 to trunc(Sqrt(N)) do

If N mod i = 0 then

begin

kt:= false;

break;

end;

end;

NTO:=kt;

End;

Function Daoso(N: longword): longword;

Var S,S1: xau;

i,M: longword;

code: integer;

Begin

S:=\'\';

Str(N,S1);

For i:=length(S1) downto 1 do S:=S+S1\[i\];

While (length(S)\<4) do S:=S+\'0\';

Val(S,M,code);

If code=0 then Daoso:=M;

End;

BEGIN

Assign(t,\'Bai4.INP\');

Reset(t);

Read(t,N);

For i:=1 to N do read(t,a\[i\]);

close(t);

Assign(t,\'Bai4.OUT\');

Rewrite(t);

d:=0;

For i:=1 to N do

If NTO(Daoso(a\[i\])) then inc(d);

Write(t,d);

close(t);

END.
