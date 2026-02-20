NGUYỄN THỊ TÂM \_ THPT Phạm Ngũ Lão

**CAUHOI**

**Bài 4. Tỉa mảng (10đ)**

Cho dãy số nguyên a gồm n phần tử và dãy số nguyên b gồm m phần tử
(m\<=n). Các phần tử của dãy a và b có kiểu nguyên.

**Yêu cầu:** Có thể xóa (gạch) khỏi dãy a một số phần tử sao cho các
phần tử còn lại (giữ nguyên trật tự ban đầu) chính là dãy b.

**Dữ liệu**: Vào cho trong tệp **BAI3**.**INP**

-   Dòng thứ nhất: Ghi giá trị hai số n, m tương ứng với số lượng phần
    tử trong dãy a và dãy b (1\<=n, m \<=150), (0\<=a~i~\<=10^5^).

-   Dòng thứ 2: Ghi giá trị các phần tử của dãy a.

-   Dòng thứ 3: Ghi giá trị các phần tử của dãy b.

-   Các phần tử trên cùng một dòng được ghi cách nhau duy nhất một dấu
    cách trống.

**Kết quả:** Ghi ra tệp **BAI3**.**OUT**: Có 2 trường hợp:

-   Trường hợp 1 (thực hiện được): Dòng đầu ghi 'CO'; dòng thứ hai ghi
    vị trí các phần tử bị xóa trong dãy a. Các vị trí này được ghi cách
    nhau duy nhất bởi một dấu cách trống. nếu có các phần tử bằng nhau
    thì xóa phần tử sau.

-   Trường hợp 2 (không thực hiện được): Ghi 'KHONG'

**Ví dụ**:

+---------------+-----------------+----------------+------------------+
| **BAI4.INP**  | **BAI4.OUT**    | **BAI4.INP**   | **BAI4.OUT**     |
+===============+=================+================+==================+
| 6 4           | CO              | 6 4            | CO               |
|               |                 |                |                  |
| 6 15 8 75 8 9 | 2 5             | 2 2 3 4 5 5    | 2 6 (xoa vị trí  |
|               |                 |                | 2-6)             |
| 6 8 75 9      | (xoa vị trí     | 2 3 4 5        |                  |
|               | 2-5)            |                |                  |
+---------------+-----------------+----------------+------------------+
| 6 4           | KHONG           |                |                  |
|               |                 |                |                  |
| 15 6 7 8 9 30 |                 |                |                  |
|               |                 |                |                  |
| 6 8 9 7       |                 |                |                  |
+---------------+-----------------+----------------+------------------+

*Ghi chú:* Bài được chấm qua 10 test, mỗi test đúng được 1 điểm:

**DAPAN**

uses crt;

var a,b,k:array\[1..1000\] of longint;

i,j,h,l,n,m:integer;

f1,f2:text;

begin

clrscr;

assign(f1,\'bai4.inp\');

reset(f1);

assign(f2,\'bai4.out\');

rewrite(f2);

read(f1,n,m);

for i:=1 to n do read(f1,a\[i\]);

for i:=1 to m do read(f1,b\[i\]);

i:=1;j:=1;

repeat

if a\[i\]=b\[j\] then

begin

inc(i);

inc(j);

end

else

begin

inc(h);

k\[h\]:=i;

inc(i);

end;

until i\>n;

if (i\>n) and (j\>m) and (n\<\>m) then

begin

writeln(f2,\'CO\');

FOR l:=1 TO H DO write(f2,k\[l\],\' \');

end

else write(f2,\'KHONG\');

close(f1);

close(f2);

end.
