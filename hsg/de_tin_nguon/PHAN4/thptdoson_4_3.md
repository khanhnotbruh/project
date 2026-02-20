Phạm Minh Khôi -- THPT Đồ Sơn

CAUHOI

**Bài 4. Thùng hàng**

Một công ty chuyên gia công các thùng hàng hình lập phương cho khách
hàng có kích thước tùy ý. Hiện trong kho có N thùng có kích thước
$a_{1}a_{2}\ldots a_{N}\ (\forall i:\ 1\  \leq \ i\  \leq \ N)$. Số thứ
i là số lượng thùng hàng kích thước $a_{i}$. Công ty muốn giải phóng cho
diện tích kho bằng cách cho các thùng hàng đặt xếp lồng vào nhau theo
kích thước to ngoài, bé trong (Thùng bé đặt trong thùng to). Sao cho tất
cả các thùng đều chứa trong nó thùng bé hơn để vận chuyển tránh xô, lắc.
Hãy tính số lượng thùng cần bù cho từng loại?

**Dữ liệu:** Vào từ file văn bản **BAI4.INP**

-   Dòng 1: Chứa số nguyên dương N

-   Dòng 2: Chứa dãy $A\ (a_{1},a_{2},..,a_{N} < 10^{6})$.

*Các số trên một dòng của input file được ghi cách nhau bởi dấu cách.*

**Kết quả:** Ghi ra file văn bản **BAI4.OUT**

-   Số lượng các thùng cần bổ sung, mỗi kích thước còn thiếu ngăn cách
    nhau bởi dấu cách và theo thứ tự lớn dần của kích thước thùng.

**Ví dụ:**

+-----------------+-------------+---+-------------------+--------------+
| **BAI4.INP**    | *           |   | **BAI4.INP**      | **BAI4.OUT** |
|                 | *BAI4.OUT** |   |                   |              |
+=================+=============+===+===================+==============+
| 9               | 4 4 8 4 8 2 |   | 10                | 20 16 20 0   |
|                 | 8           |   |                   | 20 14 20 4   |
| 1 2 4 2 6 8 1 1 |             |   | 4 2 4 2 6 8 8 4 4 |              |
| 1               |             |   | 4                 |              |
+-----------------+-------------+---+-------------------+--------------+
| **Giải thích**  | Thiếu 4     |   | **Giải thích**    | Thiếu 20     |
|                 | thùng 1     |   |                   | thùng 1      |
| **Có:**         |             |   | **Có:**           |              |
|                 | Thiếu 4     |   |                   | Thiếu 16     |
| 4 thùng 1       | thùng 2     |   | 4 thùng 2         | thùng 2      |
|                 |             |   |                   |              |
| 4 thùng 2       | Thiếu 8     |   | 20 thùng 4        | Thiếu 20     |
|                 | thùng 3     |   |                   | thùng 3      |
| 6 thùng 6       |             |   | 6 thùng 6         |              |
|                 | Thiếu 4     |   |                   | Thiếu 0      |
| 8 thùng 8       | thùng 4     |   | 16 thùng 8        | thùng 4      |
|                 |             |   |                   |              |
|                 | Thiếu 8     |   | 20 thùng 1        | Thiếu 20     |
|                 | thùng 5     |   |                   | thùng 5      |
|                 |             |   |                   |              |
|                 | Thiếu 2     |   |                   | Thiếu 14     |
|                 | thùng 6     |   |                   | thùng 6      |
|                 |             |   |                   |              |
|                 | Thiếu 8     |   |                   | Thiếu 20     |
|                 | thùng 7     |   |                   | thùng 7      |
|                 |             |   |                   |              |
|                 | Thiếu 0     |   |                   | Thiếu 4      |
|                 | thùng 8     |   |                   | thùng 8      |
+-----------------+-------------+---+-------------------+--------------+

DAPAN

**Bài 4 (9 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu**                               |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 4 | 1  | 9   |                                                 |
|       | -9 |     |                                                 |
| (9    |    |     |                                                 |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+

**\
**

Program d2b1;

const fi=\'bai4.inp\';

fo=\'bai4.out\';

Var a,d,b:array\[1..100000000\] of longint;

N,Max,MaxD:longint;

i,j:Longint;

f1,f2:text;

procedure mofile;

begin

assign(f1,fi);

reset(f1);

readln(f1,N);

MaxD:=0;

for i:=1 to N do

Begin

read(f1,a\[i\]);

if maxD\<a\[i\] then maxD:=a\[i\];

End;

assign(f2,fo);

Rewrite(f2);

end;

Procedure dongfile;

begin

close(f1);

close(f2);

end;

Procedure xuli1;

Begin

fillchar(d,sizeof(d),0);

for i:=1 to n do inc(d\[a\[i\]\],a\[i\]);

max:=d\[1\];

for I:=2 to MaxD do if d\[i\]\>max then max:=d\[i\];

for i:=1 to MaxD-1 do Write(f2,Max-d\[i\],\' \');

Write(f2,Max-d\[MaxD\])

End;

BEGIN

mofile;

Xuli1;

dongfile;

END.
