Phạm Văn Giang -- THPT Thủy Sơn

CAUHOI

Cho dãy số nguyên A gồm các phần tử a~1~, a~2~,..,a~N~. Hãy tìm một đoạn
gồm các phần tử liên tiếp trong dãy A: a~L~, a~L+1~,...,a~H-1~,a~H~ thỏa
mãn 2 điều kiện:

-   Các phần tử trong đoạn có giá trị không giảm

-   Các phần tử trong đoạn là nhiều nhất có thể

**Quy ước:** Đoạn chỉ gồm đúng 1 phần tử trong dãy A cũng được coi là
dãy không giảm

**Dữ liệu vào:** Từ file bai2.inp

-   Dòng 1: Số nguyên dương N ứng với số phần tử của dãy A (N≤10^5^)

-   Dòng 2: Gồm N số nguyên a~1~, a~2~,...,a~N~ cách nhau 1 dấu cách (độ
    lớn không quá 10^9^)

**Kết quả:** Ghi vào file bai2.out 1 số duy nhất là số lượng phần tử của
đoạn không giảm dài nhất tìm được.

**Ví dụ:**

+--------------------------------------+-------------------------------+
| **Bai2.inp**                         | **Bai2.out**                  |
+======================================+===============================+
| **7**                                | **4**                         |
|                                      |                               |
| **2 3 1 1 2 2 1**                    |                               |
+--------------------------------------+-------------------------------+

DAPAN

var f1,f2:text;

a:array\[1..100000\] of longint;

n,i,d,max:longint;

begin

assign(f1,\'bai2.inp\');reset(f1);

assign(f2,\'bai2.out\');rewrite(f2);

readln(f1,n);

for i:=1 to n do read(f1,a\[i\]);

max:=0;d:=1;

for i:=1 to n do

if a\[i\]\<=a\[i+1\] then inc(d)

else

begin

if max\<d then

begin

max:=d;

d:=1;

end;

d:=1;

end;

write(f2,max);

close(f1);close(f2);

end.
