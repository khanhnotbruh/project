**Hoàng Thị Hiền - THPT Lê Ích Mộc**

**CAUHOI**

**FIBO NGUYÊN TỐ**

Cho số nguyên dương N(10^2^ ![](media/image1.wmf)N
![](media/image2.wmf)10^9^). Tìm tất cả các số tự nhiên X sao cho X nhỏ
hơn hoặc bằng N thoả mãn các điều kiện sau đây :

\+ X là số nguyên tố.

\+ X là số Fibonacci.

(số Fibonacci là các số trong dãy được định nghĩa như sau : F(1) =1 ;
F(2)= 1 ; F(n)=F(n-1)+F(n-2) với mọi n![](media/image3.wmf)3).

**Dữ liệu vào** : Chứa trong file **FIBONT.INP** như sau :

\- 1 dòng duy nhất chứa số N (10^2^ ![](media/image1.wmf)N
![](media/image4.wmf)10^9^).

**Dữ liệu ra **: Ghi ra file **FIBONT.OUT** như sau :

\- là các số FIBO nguyên tố nhỏ hơn hoặc bằng N, mỗi số trên một dòng.

Ví dụ :

+---------------------------------+------------------------------------+
| **FIBONT.INP**                  | **FIBONT.OUT**                     |
+=================================+====================================+
| 100                             | 2                                  |
|                                 |                                    |
|                                 | 3                                  |
|                                 |                                    |
|                                 | 5                                  |
|                                 |                                    |
|                                 | 13                                 |
|                                 |                                    |
|                                 | 89                                 |
+---------------------------------+------------------------------------+

DAPAN

program fibonto;

var

n:int64;

i:longint;

f1,f2:text;

f:array\[1..32000\] of int64;

function ktnt(x:int64):boolean;

var j:longint; ok:boolean;

begin

ktnt:=true;

if x=1 then ktnt:=false

else

begin

for j:=2 to trunc(sqrt(x)) do

if (x mod j=0) then

begin

ktnt:=false;

break;

end;

end;
