Nguyễn Thị Mỵ - THPT Kiến An

CAUHOI

**Bài 2: Chia quà tết** (4,0 điểm)

Tên file: gift.pas\
Dữ liệu vào: gift.inp\
Dữ liệu ra: gift.out

Trường THPT A chia quà tết cho học sinh, có *X* chiếc áo và *Y* hộp bánh
để chia quà cho học sinh diện chính sách cuối năm 2018. Nhà trường chia
quà cho học sinh thoả mãn điều kiện: nếu chia cho *n* học sinh diện
chính sách thì các học sinh phải nhận được số lượng chiếc áo như nhau,
số lượng hộp bánh như nhau, đồng thời phải chia hết tất cả *X* chiếc áo
và *Y* hộp bánh. Em hãy giúp nhà trường liệt kê tất cả các phương án
chia quà thoả mãn điều kiện nêu trên.

**Dữ liệu:** Dòng 1: hai số nguyên *X, Y* (1\<= *X, Y* \<= 10^9^)

**Kết quả:** Dòng 1.. *m* (*m* là số phương án chia quà): trên mỗi dòng
ghi ba số nguyên *n, a, b* (mỗi số cách nhau một dấu cách) là một phương
án chia quà có *n* học sinh được chia quà, mỗi học sinh nhận *a* chiếc
áo và *b* hộp bánh. Các phương án được liệt kê ở các dòng liên tiếp theo
thứ tự *n* tăng dần.

**Ví dụ:**

+----------------------------------+-----------------------------------+
| gift.inp                         | gift.out                          |
+==================================+===================================+
| 9 12                             | 1 9 12                            |
|                                  |                                   |
|                                  | 3 3 4                             |
+----------------------------------+-----------------------------------+
| 6 18                             | 1 6 18                            |
|                                  |                                   |
|                                  | 2 3 9                             |
|                                  |                                   |
|                                  | 3 2 6                             |
|                                  |                                   |
|                                  | 6 1 3                             |
+----------------------------------+-----------------------------------+

DAPAN

var i,x,y:longint;

f,g: text;

function UCLN(x,y:longint):longint;

var sd:longint;

begin

while y\<\>0 do

begin

sd:= x mod y;

x:=y;

y:=sd;

end;

UCLN:=x;

end;

begin

assign(f,\'gift.inp\'); reset(f);

assign(g,\'gift.out\'); rewrite(g);

read(f,x,y);

for i:=1 to UCLN(x,y) do

begin

if (x mod i=0) and (y mod i =0) then

writeln(g,i,\' \',x div i,\' \',y div i);

end;

close(f);

close(g);

readln

End.
