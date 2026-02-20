Nguyễn Ngọc Ký -- THPT Hùng Thắng CAUHOI

Bài 2: Đếm đoạn: **(*7 điểm*)**

Cho mảng A gồm N số nguyên. Một đoạn con của A là một dãy số nguyên liên
tiếp trong A. Hãy đếm số đoạn con có Max lớn hơn hoặc bằng M.

Dữ liệu vào: dòng 1 N, M (N là số phần tử của dãy A, số nguyên M,
N≤10^6^, a~i~ ,m \< 10^9^).

Dòng 2: các phần tử của dãy A cách nhau một dấu cách.

Dữ liệu ra: số nguyên duy nhất là số các dãy con thỏa mãn.

Ví dụ:

+-----------------------------------+-----------------------------------+
| BAI2.INP                          | BAI2.OUT                          |
+===================================+===================================+
| 5 1                               | 15                                |
|                                   |                                   |
| 1 1 1 1 1                         |                                   |
+-----------------------------------+-----------------------------------+
| 4 4                               | 8                                 |
|                                   |                                   |
| 1 5 2 5                           |                                   |
+-----------------------------------+-----------------------------------+

**Các ràng buộc:**

60% Số điểm có M,N ≤ 10^3^

200% Số điểm có M,N ≤ 10^4^

10% Số điểm có M,N ≤ 10^5^

10% Số điểm có M,N ≤ 10^6^

DAPAN

program bai2;

var f1,f2: text;

a,b: array\[0..1000000\] of longint;

i,n,m,v: longint;

begin

assign(f1,\'bai2.inp\');reset(f1);

assign(f2,\'bai2.out\');rewrite(f2);

readln(f1,n,m);

for i:= 1 to n do

begin

read(f1,a\[i\]);

if a\[i\]\>= m then

begin

v:=i;

b\[i\]:=b\[i-1\]+v;;

end

else

b\[i\]:=b\[i-1\]+v;

end;

write(f2,b\[i\]);

close(f1);close(f2);

end.
