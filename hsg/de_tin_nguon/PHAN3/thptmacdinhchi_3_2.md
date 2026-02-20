Nguyễn Thị Nhung - THPT Mạc Đĩnh Chi

**CAUHOI**

**ĐOẠN SỐ CHẴN LIÊN TIẾP (8 điểm)**

Cho dãy $n\ $số nguyên $a_{1},a_{2},\ldots,a_{n}$, Bạn hãy tìm đoạn con
liên tiếp dài nhất
$a_{i},a_{i + 1},\ldots,a_{j}\ (1 \leq i \leq j \leq n)$ sao cho các
phần tử trên đoạn con liên tiếp này là số chẵn và thỏa mãn
$a_{i} < a_{i + 1} < \ldots < a_{j}$?

**Dữ liệu:** Vào từ file văn bản **BAI3.INP**

-   Dòng thứ nhất chứa số nguyên dương $n\ (1 \leq n \leq 1\ 000\ 000)$;

-   Dòng tiếp theo là $n$ số nguyên dương
    $a_{1},a_{2},\ldots,a_{n}\ (1 \leq a_{i} \leq 1\ 000,\ \ \forall i = 1..n)$.

**Kết quả:** Ghi ra file văn bản **BAI3.OUT** một số nguyên duy nhất là
độ dài lớn nhất tìm được

**Ví dụ:**

+------------------+---------------+----------------------------------+
| **BAI3.INP**     | **BAI3.OUT**  | **Giải thích**                   |
+==================+===============+==================================+
| 7                | 3             | Đoạn liên tiếp dài nhất thỏa mãn |
|                  |               | là $\{ 2,\ 4,\ 6\}$              |
| 1 2 3 4 2 4 6    |               |                                  |
+------------------+---------------+----------------------------------+

**TRALOI**

var n,i:longint;

f1,f2:text;

A:array\[1..100000\] of longint;

procedure docdl;

var i: longint;

begin

assign(f1,\'BAI3.inp\');reset(f1);

assign(f2,\'BAI3.out\');rewrite(f2);

readln(f1,n);

for i:=1 to n do

read(f1,A\[i\]);

end;

procedure xuli;

var i,j,s,t,max:longint;

begin

max:=0;

for i:=1 to n-1 do

begin

t:=1;

for j:=i to n-1 do

begin

if (A\[j\] mod 2 = 0) and (A\[j+1\] mod 2 = 0) and (A\[j\] \< A\[j+1\])
then

begin

inc(t);

if t \> max then max:=t;

end

else break;

end;

end;

write(f2,max);

end;

BEGIN

docdl;

xuli; close(f2);

END.
