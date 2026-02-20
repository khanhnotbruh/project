Phạm Minh Khôi -- THPT Đồ Sơn

CAUHOI

**Bài 3. Rào trang trại:**

Bạn Q có một trang trại rộng, muốn rào trang trại của mình tránh các đàn
gia súc phá phách. Bạn Q mua được cọc gỗ để làm trụ và số lượng cây tre
tùy ý để rào. Do cây tre được trồng tự nhiên nên khi thu mua về có độ
dài khác nhau. Khi rào thì bạn Q muốn không chặt bỏ đi bất cứ đoạn tre
nào và trong bất cứ đoạn bờ rào nào đều phải có sự hiện diện của các
loại cây tre. Hãy cho biết đoạn bờ rào của bạn Q đạt độ dài bao nhiêu để
các cây tre có thể bằng đầu nhau gần nhất?

***Yêu cầu*:** Hãy giúp bạn Q tính được chiều dài của bờ rào khi các cây
tre bằng đầu nhau.

**Input:** **BAI3.INP**

\- Dòng đầu gồm số N là số loại cây tre bạn Q mua
($1 \leq N \leq {5.10}^{6}$)

\- Dòng sau là độ dài lần lượt N cây tre. ($1 \leq N \leq {5.10}^{6}$).

*Các số trên một dòng của input file được ghi cách nhau bởi dấu cách.*

**Output:** Ghi ra **BAI3.OUT**

\- Một dòng duy nhất gồm số lượng cây tre cần có tương ứng để đáp ứng
yêu cầu trên. Mỗi kết quả ngăn cách nhau bởi dấu cách trống.

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **BAI3.INP**                      | **BAI3.OUT**                      |
+===================================+===================================+
| 3                                 | 6 4 3                             |
|                                   |                                   |
| 2 3 4                             | Gải thích: Cần 6 cây dài 2; 4 cây |
|                                   | dài 3;3 cây dài 4 thì đoạn bờ rào |
|                                   | đạt chiều dài 12 mà không phải    |
|                                   | chặt đi bất kỳ cây tre nào.       |
+-----------------------------------+-----------------------------------+
| 5                                 | 42 14 7 21 6                      |
|                                   |                                   |
| 1 3 6 2 7                         | Gải thích: Cần 42 cây dài 1; 14   |
|                                   | cây dài 3;7 cây dài 4; 21 cây dài |
|                                   | 2; 7 cây dài 6 thì đoạn bờ rào    |
|                                   | đạt chiều dài 42 mà không phải    |
|                                   | chặt đi bất kỳ cây tre nào.       |
+-----------------------------------+-----------------------------------+

DAPAN

**Bài 3 (9 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu**                               |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 3 | 1  | 1   |                                                 |
|       | -9 |     |                                                 |
| (9    |    |     |                                                 |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+

Program d2b1;

const fi=\'bai3.inp\';

fo=\'bai3.out\';

Var a:array\[1..100000000\] of int64;

N,d,UT,BT,BT1:int64;

i:Longint;

f1,f2:text;

procedure mofile;

begin

assign(f1,fi);

reset(f1);

readln(f1,N);

for i:=1 to N do read(f1,a\[i\]);

assign(f2,fo);

Rewrite(f2);

end;

Procedure dongfile;

begin

close(f1);

close(f2);

end;

Function UCLN(x,y:Longint):Longint;

Begin

if x mod y = 0 then

Begin

UCLN:=y;

exit;

end

else

While x\<\>y do

if x\>y then x:=x-y else y:=y-x;

UCLN:=x;

End;

Function UC(x,y:Longint):Longint;

var r:longint;

Begin

if x mod y = 0 then

Begin

UC:=y;

exit;

end

else

While y\<\>0 do

Begin

r:=x mod y;

x:=y;

y:=r;

end;

UC:=x;

End;

Procedure xuli1;

Begin

UT:=UC(a\[1\],a\[2\]);

if n\>1 then BT:=(a\[1\]\*a\[2\]) div UT

else BT:=a\[1\];

for i:=3 to n do

Begin

UT:=UC(UT,a\[i\]);

BT:=(BT\*a\[i\]) div UC(BT,a\[i\]);

end;

for i:=1 to n-1 do Write(f2,BT div a\[i\],\' \');

write(f2,bt div a\[n\]);

End;

BEGIN

mofile;

Xuli1;

dongfile;

END.
