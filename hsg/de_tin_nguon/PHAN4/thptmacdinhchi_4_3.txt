Nguyễn Thị Nhung - THPT Mạc Đĩnh Chi

**CÂU HỎI**

**Dán tường (10 điểm)**

Nam có vô số bức tranh hình vuông kích thước $d \times d$, với $d$ là số
nguyên dương tùy ý. Nam nhận được yêu cầu của khách hàng là dán kín
tranh lên $n$ bức tường phẳng (đánh số từ $1$ đến $n$). Bức tường
$i\ $là hình chữ nhật kích thước
$a_{i} \times b_{i}\ (cm^{2})\ (i = 1..n)$ chỉ được dán lên bằng các bức
tranh hình vuông có cùng kích thước.

**Ví dụ**: Bức tường cỡ $4 \times 12$, có thể dán kín bằng một trong các
cách sau:

-   48 bức tranh hình vuông kích thước $1 \times 1$;

-   12 bức tranh hình vuông kích thước $2 \times 2$;

-   3 bức tranh hình vuông kích thước $4 \times 4$.

Họa sĩ muốn dán kín $n$ bức tường theo yêu cầu bằng ít bức tranh nhất.
Trong số những bức tranh đó, họa sĩ sẽ sử dụng bao nhiêu bức tranh hình
vuông có cạnh $d$ lớn nhất?

**Dữ liệu:** Vào từ file văn bản **BAI4.INP**

-   Dòng thứ nhất chứa một số nguyên dương
    $n\ (1 \leq n \leq 1\ 000\ 000)$;

-   $n\ $dòng tiếp theo, dòng thứ $i$ chứa hai số nguyên dương
    $a_{i},\ b_{i}(1 \leq a_{i},b_{i} \leq 10^{6},\ \ \forall i = 1..n)$
    là kích thước của bức tường $i$.

**Kết quả:** Ghi ra file văn bản **BAI4.OUT** một số nguyên duy nhất là
số lượng bức tranh hình vuông có cạnh $d$ lớn nhất đã dán lên $n$ bức
tường.

**Ví dụ:**

+----------+-----------+---------------------+-----------------------+
| **BA     | **B       |                     | **Giải thích**        |
| I4.INP** | AI4.OUT** |                     |                       |
+==========+===========+=====================+=======================+
| 3        | 26        |                     | \- Bức tường 1: Sử    |
|          |           |                     | dụng 6 bức tranh kích |
| 6 9      |           |                     | thước $3 \times 3$.   |
|          |           |                     |                       |
| 2 4      |           |                     | \- Bức tường 2: Sử    |
|          |           |                     | dụng 2 bức tranh kích |
| 12 15    |           |                     | thước $2 \times 2$.   |
|          |           |                     |                       |
|          |           |                     | \- Bức tường 3: Sử    |
|          |           |                     | dụng 20 bức tranh     |
|          |           |                     | kích thước            |
|          |           |                     | $3 \times 3$.         |
|          |           |                     |                       |
|          |           |                     | Vậy số lượng bức      |
|          |           |                     | tranh hình vuông có   |
|          |           |                     | cạnh $d = 3$ lớn nhất |
|          |           |                     | sử dụng là            |
|          |           |                     | $6 + 20 = 26$         |
+----------+-----------+---------------------+-----------------------+

**\
**

**DAPAN**

var f1,f2:text; n:longint;

a,b,c,d:array\[1..100000\]of int64;

procedure docdl;

var i: longint;

begin

assign(f1,\'Bai4.inp\');reset(f1);

assign(f2,\'Bai4.out\');rewrite(f2);

readln(f1,n);

for i:=1 to n do readln(f1,a\[i\],b\[i\]);

end;

function ucln(x,y:longint):longint;

var i,du,m,n:longint;

begin

du:=x mod y;

while du \<\> 0 do

begin

x:=y; y:=du; du:=x mod y;

end;

exit(y);

end;

procedure xuli;

var i,j:longint; max,s:int64;

begin

max:=0;s:=0;

for i:=1 to n do c\[i\]:=ucln(a\[i\],b\[i\]);

for i:=1 to n do

if c\[i\]\>max then max:=c\[i\];

for i:=1 to n do

if max= c\[i\] then s:=s+((a\[i\]\*b\[i\]) div sqr(max));

write(f2,s);

end;

BEGIN

docdl;

xuli; close(f2);

END.

**s**
