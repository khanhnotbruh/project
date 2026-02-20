**Hoàng Thị Hiền - THPT Lê Ích Mộc**

**CAUHOI**

**ĐOẠN CON LỚN NHẤT**

Cho dãy số nguyên a~1~, a~2~,\..., a~N~ (\|a~i~\| \< 10^9^, N \< 10^5^).
Một tập hợp khác rỗng các số hạng liên tiếp {a~i~, a~i+1~,\..., a~k~} (i
≤ k) gọi là một đoạn con của dãy đó. Với mỗi đoạn con ta tính tổng tất
cả các số hạng của nó.

***Yêu cầu:*** Tìm giá trị lớn nhất trong số các tổng của các đoạn con
của dãy đã cho.

***Dữ liệu vào:*** cho trong file **SUBMAX.INP**:

Dòng đầu chứa số N, dòng thứ i trong N dòng tiếp theo chứa số a~i~.

***Dữ liệu ra:*** Ghi ra file **SUBMAX.OUT** gồm một số duy nhất là tổng
lớn nhất tìm được.

***Ví dụ:***

+---------------------------------+------------------------------------+
| **SUBMAX.INP**                  | **SUBMAX.OUT**                     |
+=================================+====================================+
| 7                               | 8                                  |
|                                 |                                    |
| 1                               |                                    |
|                                 |                                    |
| -2                              |                                    |
|                                 |                                    |
| -1                              |                                    |
|                                 |                                    |
| 4                               |                                    |
|                                 |                                    |
| -1                              |                                    |
|                                 |                                    |
| 5                               |                                    |
|                                 |                                    |
| -2                              |                                    |
+---------------------------------+------------------------------------+

DAPAN

const fi = \'submax.inp\';

fo = \'submax.out\';

nmax = 100000;

var i,n:longint;

f:text;

S:array\[0..nmax\] of int64;

kq:int64;

d,c:longint;

procedure nhapdulieu;

var f:text;

i,a:longint;

begin

s\[0\]:=0;

assign(f,fi);

reset(f);

readln(f,n);

for i:= 1 to n do

begin

readln(f,a);

s\[i\]:=s\[i-1\]+a;

end;

close(f);

end.
