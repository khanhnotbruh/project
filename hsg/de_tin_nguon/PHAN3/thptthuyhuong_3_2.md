Vũ Thị Hồng Thư - THPT Thụy Hương

CAUHOI

**Bài 3. (8điểm):**

Trung tâm nghiêm cứu gen thu thập N mẫu gen của N cá thể trong cùng một
loài. N gen này được mã hoá thành dãy N số nguyên dương a~1~, a~2~, ...,
a~N~. Bộ phận phân tích sau khi xem xét đã đưa ra được kết luận sau:

*Hai cá thể là có quan hệ huyết thống gần khi và chỉ khi mã gen của
chúng biểu diễn trong hệ nhị phân giống nhau hoặc khác nhau đúng 1 bit*

Ví dụ: Hai cá thể có mã gen 7 (biểu diễn trong *hệ nhị phân* là 111) và
5 (biểu diễn trong *hệ nhị phân* là 101) là có quan hệ huyết thống gần.

Hãy đếm xem trong số mẫu gen của N cá thể thu thập được có bao nhiêu cặp
cá thể có quan hệ huyết thống gần.

***Dữ liệu:*** Vào từ file văn bản **Bai3.inp**

-   Dòng đầu tiên ghi số nguyên dương N (N≤10^4^)

-   N dòng tiếp theo, dòng thứ i ghi mã gen của cá thể thứ i là một số
    nguyên dương trong phạm vi từ 1 đến 1000)

***Kết quả:*** Ghi ra file văn bản **Bai3.Out** một số nguyên duy nhất
là số cặp có quan hệ huyết thống gần đã tìm được.

*Ví dụ:*

+------------------------------------+---------------------------------+
| **Bai3.INP**                       | **Bai3.OUT**                    |
+====================================+=================================+
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

DAPAN

Chương trình nguồn

TYPE xau=string\[11\];

VAR t: text;

a: array\[1..10000\] of word;

b: array\[1..10000\] of xau;

i,n,j,d: word;

Function TPNP(N:word): xau;

Var S,S1: xau;

Begin

S:=\'\';

While (n\<\>0) do

begin

Str(N mod 2,S1);

N:= N div 2;

S:=S1+S;

S1:=\'\';

end;

While (length(S)\< 11) do S:=\'0\'+S;

TPNP:=S;

End;

Function Ktra(S1,S2: xau): boolean;

Var kt: boolean;

i: byte;

Begin

i:=1; kt:=true;

While (i\<= length(S1)) do

If S1\[i\] = S2\[i\] then inc(i)

else

for i:=i+1 to length(S1) do

If S1\[i\]\<\>S2\[i\] then

begin

kt:=false;

break;

end;

Ktra:=kt;

End;

BEGIN

Assign(t,\'Bai3.INP\');

Reset(t);

Read(t,n);

For i:=1 to n do read(t,a\[i\]);

close(t);

Assign(t,\'Bai3.OUT\');

Rewrite(t);

d:=0;

For i:= 1 to n do b\[i\]:=TPNP(a\[i\]);

For i:=1 to n-1 do

for j:=i+1 to n do

If Ktra(b\[i\],b\[j\]) then inc(d);

Write(t,d);

close(t);

END.
