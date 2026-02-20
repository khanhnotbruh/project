**Bài 2:** **Hoán vị thuận thế.**

Cho a = (a~1~, a~2~, ..., a~n~) là một hoán vị của dãy số tự nhiên 1 ...
n. Ta xây dựng dãy b = (b~1~, b~2~, ..., b~n~) và gọi là thuận thế của
hoán vị a như sau:

Với mọi i = 1 ... n, b~i~ là số các phần tử nhỏ thua a~i~ và đứng trước
a~i~.

**Ví dụ:** n = 7; a = (6, 1, 3, 5, 7, 4, 2) ta có thuận thế của a là b =
(0, 0, 1, 2, 4, 2, 1).

Cho n và một hoán vị a. Hãy tìm thuận thế của a.

**Dữ liệu vào:** Từ file văn bản HVTT.INP

\- Dòng đầu tiên ghi số n là số phần tử của dãy a.

\- Dòng thứ hai ghi lần lượt n phần tử của dãy a

**Kết quả ra:** Ghi vào file HVTT.OUT

\- Dòng thứ nhất in ra thuận thế của a.

**Ví dụ:**

+------------------------------------------+---------------------------+
| **HVTT.INP**                             | **HVTT.OUT**              |
+==========================================+===========================+
| 9                                        | 0 0 2 2 2 2 2 7 8         |
|                                          |                           |
| 2 1 7 6 5 4 3 8 9                        |                           |
+------------------------------------------+---------------------------+

var f1,f2:text;

s:string;

i,j,n,d,a:byte;

arr:array\[1..10000000\]of byte;

begin

assign(f1,\'HVTT.inp\');

assign(f2,\'HVTT.out\');

reset(f1);rewrite(f2);

readln(f1,n);

for i:=1 to n do

begin

read(f1,arr\[i\]);

d:=0;

for j:=i downto 1 do if arr\[j\] \<arr\[i\] then inc(d);

write(f2,d,\' \');

end;

close(f2);

end.
