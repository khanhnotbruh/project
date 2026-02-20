Vũ Văn Đại -- THPT Hùng Thắng CAUHOI

**Bài 3: (3 điểm)**

Một dãy dấu ngoặc hợp lệ là một dãy các kí tự "(" và ")" được định nghĩa
như sau:

\- Dãy rỗng (không có kí tự nào) là một dãy dấu ngoặc hợp lệ.

\- Nếu A là một dãy dấu ngoặc hợp lệ thì (A) là dãy dấu ngoặc hợp lệ.
Dấu ngoặc mở và dấu ngoặc đóng hai bên dãy A được gọi là tương ứng với
nhau.

\- Nếu A và B là hai dãy dấu ngoặc hợp lệ thì AB là dãy dấu ngoặc hợp
lệ.

Ví dụ: ((( )))(( ))( )( ) là dãy dấu ngoặc hợp lệ, các dấu mở ngoặc ở
các vị trí 1, 2, 3, 7, 8, 11, 13 tương ứng lần lượt với các dấu đóng
ngoặc ở các vị trí: 6, 5, 4, 10, 9, 12, 14.

Ban đầu có một dãy dấu ngoặc hợp lệ, người ta viết vào sau mỗi dấu ngoặc
mở một số là số dấu ngoặc (cả đóng và mở) nằm giữa trong dấu ngoặc mở đó
và dấu ngoặc đóng tương ứng:

( ( ( ) ) ) ( ( ) ) ( ) ( )

4 2 0 2 0 0 0

DAPAN

var f1,f2:text;

s:string;

i,j,n,dd,dung,k:byte;

mo,dong:array\[1..255\] of byte;

begin

assign(f1,\'bai1.inp\');

assign(f2,\'bai1.out\');

reset(f1);rewrite(f2);

readln(f1,n);

read(f1,s);

close(f1); k:=0;i:=1;

while i\<n do

begin

dung:=1;dd:=0;

if s\[i\]=\'(\' then

for j:=i+1 to n do

begin

if s\[j\]=\'(\' then

begin

inc(dung);

inc(dd);

end

else dec(dung);

if dung =0 then

begin

write(f2,2\*dd,\' \');

inc(i);

break;

end;

end

else inc(i);

end;

close(f2);

end.
