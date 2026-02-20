**LÊ ĐÌNH LONG -- THPT THÁI PHIÊN**

CÂU HỎI

**BÀI 3: TÌM ĐOẠN NGẮN NHẤT**

Nhân dịp trung thu, trên một đường phố Lê Lợi người ta treo $n$ đèn lồng
màu xanh và màu đỏ. Đèn thứ i ở vị trí cách vị trí bắt đầu con phố là
$d_{i}(\ i = \ 1..n)$, mỗi một vị trí chỉ treo một đèn. Để tìm được điểm
múa lân đẹp ban tổ chức muốn chọn một đoạn đường ngắn nhất mà dọc theo
nó có ít nhất $a$ đèn xanh và ít nhất $b$ đèn đỏ để trang trí.

Yêu cầu: Với $a,b$ và vị trí của $n$ đèn. Hãy tìm đoạn đường có độ dài
ngắn nhất sao cho có ít nhất $a\ $đèn xanh và ít nhất $b$ đèn đỏ.

Dữ liệu: Vào từ file văn bản **BAI3.INP**

> \- Dòng 1 chứa $n,\ a,\ b\ (\ a + b\  \leq \ n)$;
>
> \- Dòng i trong các dòng tiếp theo mỗi dòng chứa hai số nguyên $d$ và
> $k$ $\left( d \leq 10^{9} \right),$
>
> $k = 1\ $là đèn xanh$,\ k = 2\ \ $là đèn đỏ;

\- Các số ghi trên một dòng cách nhau một dấu cách.

Kết quả: ghi ra file văn bản **BAI3.OUT** số nguyên là độ dài đoạn đường
ngắn nhất tìm được. Quy ước ghi -1 nếu không tồn tại đoạn đường nào thỏa
mãn điều kiện.

+-------------------------------+--------------------------------------+
| **BAI3.INP**                  | **BAI3.OUT**                         |
+===============================+======================================+
| 7 2 2                         | 35                                   |
|                               |                                      |
| 20 2                          |                                      |
|                               |                                      |
| 30 1                          |                                      |
|                               |                                      |
| 25 1                          |                                      |
|                               |                                      |
| 35 1                          |                                      |
|                               |                                      |
| 10 1                          |                                      |
|                               |                                      |
| 60 2                          |                                      |
|                               |                                      |
| 65 2                          |                                      |
+-------------------------------+--------------------------------------+

*Ràng buộc:*

\- 60% số test tương ứng với 60% số điểm có $n \leq 10^{3}$;

\- 40% số test tương ứng với 40% số điểm với trường hợp
$\ n \leq 10^{5}$ còn lại.

**ĐÁP ÁN**

**BÀI 3:**

const fi=\'bai2.inp\';

fo=\'bai2.out\';

var d,c:array\[1..100000\] of longint;

n,i,a,b,min,dx,dd,l:longint;

procedure doc;

var i:longint;

begin

assign(input,fi); reset(input);

assign(output,fo); rewrite(output);

readln(n,a,b);

for i:=1 to n do readln(d\[i\],c\[i\]);

end;

procedure swap(var x,y:longint);

var tg:longint;

begin

tg:=x;

x:=y;

y:=tg;

end;

procedure qsort(l,r:longint);

var i,j,key:longint;

begin

i:=l;

j:=r;

key:=d\[(l+r) div 2\];

repeat

while (d\[i\]\<key) do inc(i);

while (d\[j\]\>key) do dec(j);

if (i\<=j) then

begin

swap(d\[i\],d\[j\]);

swap(c\[i\],c\[j\]);

inc(i);

dec(j);

end;

until i\>j;

if (i\<r) then qsort(i,r);

if (l\<j) then qsort(l,j);

end;

BEGIN

doc;

qsort(1,n);

min:=1000000001;

dx:=0;

dd:=0;

l:=1;

for i:=1 to n do

begin

if (c\[i\]=1) then inc(dx)

else inc(dd);

while ((dx\>=a) and (dd\>=b)) do

begin

if (d\[i\]-d\[l\]\<min) then min:=d\[i\]-d\[l\];

if (c\[l\]=1) then dec(dx)

else dec(dd);

inc(l);

end;

end;

writeln(min);

close(input); close(output);

END.
