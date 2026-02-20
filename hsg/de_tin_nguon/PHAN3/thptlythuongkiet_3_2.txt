> **Nguyễn Văn Khoa -- THPT Lý Thường Kiệt**

**CAUHOI**

Số siêu nguyên tố là số nguyên tố mà khi xoá bỏ dần các chữ số bên phải
của nó thì phần còn lại vẫn là số nguyên tố. Ví dụ: 2333 là số siêu
nguyên tố vì 2333, 233, 23, 2 đều là các số nguyên tố.

Yêu vầu: Cho số nguyên dương M (M≤30000). Hãy tìm số siêu nguyên tố gần
với M nhất, tức là trị tuyệt đối của hiệu giữa số tìm được với M là nhỏ
nhất)

*Dữ liệu:* Nhập vào từ bàn phím số nguyên dương M (không cần kiểm tra dữ
liệu nhập)

*Kết quả:* Ghi ra màn hình các số nguyên tố gần M nhất, mỗi số một dòng
theo thứ tự số nhỏ hơn ghi trước.

*Ví dụ:*

+----------------------------------+-----------------------------------+
| Dữ liệu nhập:                    | Kết quả in ra trên 2 dòng:        |
+==================================+===================================+
| 30                               | 29                                |
|                                  |                                   |
|                                  | 31                                |
+----------------------------------+-----------------------------------+
| 45                               | 37                                |
|                                  |                                   |
|                                  | 53                                |
+----------------------------------+-----------------------------------+
| 100                              | 79                                |
|                                  |                                   |
|                                  | 233                               |
+----------------------------------+-----------------------------------+
| 200                              | 79                                |
|                                  |                                   |
|                                  | 233                               |
+----------------------------------+-----------------------------------+
| 10                               | 7                                 |
|                                  |                                   |
|                                  | 23                                |
+----------------------------------+-----------------------------------+
| 150                              | 79                                |
|                                  |                                   |
|                                  | 233                               |
+----------------------------------+-----------------------------------+

**DAPAN**

program BAI3;

var d: array\[1..30000\] of byte;

M: longint;

procedure sangNT;

var i,j: longint;

begin

for i:=1 to 30000 do d\[i\]:=0;

d\[1\]:=1;

i:=1;

while i\*i\<=30000 do

begin

repeat inc(i) until (i\*i\>30000) or (d\[i\]=0);

if i\*i\<=30000 then

begin

j:=2;

while i\*j\<=30000 do

begin

d\[i\*j\]:=1;

inc(j);

end;

end;

end;

end;

function sieunt(x: longint): boolean;

begin

repeat

if d\[x\]=1 then

begin

sieunt:=false;

exit;

end;

x:=x div 10;

until x=0;

sieunt:=true;

end;

var a, b: longint;

BEGIN

sangNT;

readln(M);

a:=m;

while (a\>0) and (not sieunt(a)) do dec(a);

b:=m;

while (b\<30001) and (not sieunt(b)) do inc(b);

if a\>0 then writeln(a);

if (b\<\>m) and (b\<30001) then writeln(b);

readln;

END.
