Phạm Minh Khôi -- THPT Đồ Sơn

CAUHOI

**Bài 3. ƯỚC MƠ HỌA SĨ**

Do đạt kết quả cao trong học tập nên Bon được mẹ cho đi siêu thị. Bon
rất thích vẽ nên khi nhìn thấy quầy bút màu thì rất thích, Bon xin mẹ và
được mẹ đồng ý cho mua. Trong siêu thị có $M$ loại bút khác nhau, loại
màu $i$ có $a_{i}$ hộp, mỗi hộp chứa $b_{i}$ chiếc bút. Giá mỗi hộp là
như nhau và Bon được mẹ cho đủ tiền để mua $N$ hộp. Bon muốn mua được
nhiều bút nhất có thể để thỏa nỗi đam mê của mình. Hãy xác định số bút
nhiều nhất mà Bon có thể mua.

Dữ liệu: Vào từ file BAI3.INP, gồm 3 dòng.

\- Dòng đầu tiên là $N,M$;

\- Dòng thứ 2 là $M$ số $a\lbrack i\rbrack$;

\- Dòng thứ 3 là $M$ số $b\lbrack i\rbrack$.

$n,m,a\lbrack i\rbrack,b\lbrack i\rbrack$ thỏa mãn ràng buộc:
$1 < T < 100;1 < n,m < 10^{6};0 < a\lbrack i\rbrack,b\lbrack i\rbrack < {5.10}^{4}$.

Các số được viết cách nhau một khoảng trống.

Ghi kết quả ra file BAI3.OUT số duy nhất là số bút nhiều nhất mua được.

+-------------------------------+------------------+------------------+
| BAI3.INP                      | BAI3.OUT         | Giải thích       |
+===============================+==================+==================+
| 7 3                           | 62               | Mua 5 hộp màu 1; |
|                               |                  | 2 hộp màu 3      |
| 5 2 3                         |                  |                  |
|                               |                  |                  |
| 10 5 6                        |                  |                  |
+-------------------------------+------------------+------------------+

DAPAN

**Bài 3 (9 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu (Theo test)**                   |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 3 | 1  | 1   |                                                 |
|       | -9 |     |                                                 |
| (9    |    |     |                                                 |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+

Program MuaBut;

const

fi=\'bai3.inp\';

fo=\'bai3.out\';

var m,n,i:longint;

a,b:array\[1..1000001\] of longint;

d,s:longint;

res,sum:int64;

Procedure nhap;

var i:longint;

Begin

assign(input,fi);

reset(input);

assign(output,fo);

rewrite(output);

readln(input,n,m);

for i:=1 to m do

read(input, a\[i\]); readln(input);

for i:=1 to m do

read(input, b\[i\]);

end;

procedure QuickSort(l,r:LongInt);

var i,j,x,tg1,tg2:longint;

begin

i:=l;j:=r;x:=b\[(l+r) div 2\];

repeat

while b\[i\]\>x do inc(i);

while b\[j\]\<x do dec(j);

if i\<=j then

begin

tg1:=b\[i\];

b\[i\]:=b\[j\];

b\[j\]:=tg1;

tg2:=a\[i\];

a\[i\]:=a\[j\];

a\[j\]:=tg2;

inc(i);dec(j);

end;

until i\>j;

If l\<j then QuickSort(l,j);

If i\<r then QuickSort(i,r);

end;

Begin

nhap;

QuickSort(1,m);

s:=1;sum:=0;res:=0;i:=1;d:=1;

While s\<=N do

begin

sum:=res+d\*b\[i\];

d:=d+1;

inc(s);

if d\>a\[i\] then

begin

i:=i+1;

res:=sum;

d:=1;

end;

end;

write(output,sum);

end.
