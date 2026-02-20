Phạm Hồng Vân -- THPT An Hải

CAUHOI

**Thành phần liên thông (8 điểm) *Tên chương trình: TPLT.PAS***

Một thành phần liên thông của một đồ thị vô hướng là một [đồ thị
con](https://vi.wikipedia.org/wiki/Thu%E1%BA%ADt_ng%E1%BB%AF_l%C3%BD_thuy%E1%BA%BFt_%C4%91%E1%BB%93_th%E1%BB%8B#.C4.90.E1.BB.93_th.E1.BB.8B_con) trong
đó giữa bất kì hai đỉnh nào đều có đường đi đến nhau, và không thể nhận
thêm bất kì một đỉnh nào mà vẫn duy trì tính chất trên.

**Yêu cầu:** Cho đồ thị vô hướng gồm N đỉnh và M cạnh nối với nhau. Đếm
xem đồ thị đã cho có bao nhiêu thành phần liên thông.

**Dữ liệu vào:** Vào từ tập tin văn bản **TPLT.INP**:

\- Dòng đâu là số N, M (1\<N≤200,M\<2000).

\- M dòng tiếp theo, dòng thứ i ghi số a~i~ và b~i~ thể hiện đỉnh a~i~
nối với đỉnh b~i~

**Kết quả:** Đưa ra tập tin văn bản **TPLT.OUT**:

Một dòng duy nhất là số thành phần liên thông tìm được.

**Ví dụ:**

+------------------------------------+---------------------------------+
| **TPLT.INP**                       | **TPLT.OUT**                    |
+====================================+=================================+
| 6 2                                | 4                               |
|                                    |                                 |
| 1 2                                |                                 |
|                                    |                                 |
| 2 3                                |                                 |
+------------------------------------+---------------------------------+

DAPAN

program lt;

const

max = 200;

var

a: array\[1..max, 1..max\] of Boolean;

dd: array\[1..max\] of Boolean;

k, u, v,m, n,i: integer;

d: Byte; f,g:text;

Begin

FillChar(a, SizeOf(a), False);

Assign(f, \'LT.INP\'); Reset(f);

Assign(g, \'LT.OUT\'); rewrite(g);

Readln(f, n, m);

for v := 1 to n do a\[v, v\] := True;

for i := 1 to m do

begin

Readln(f, u, v);

a\[u, v\] := True;

a\[v, u\] := True;

end;

for k := 1 to n do

for u := 1 to n do

for v := 1 to n do

a\[u, v\] := a\[u, v\] or a\[u, k\] and a\[k, v\];

d := 0;

FillChar(dd, n, True);

for u := 1 to n do

if dd\[u\] then

begin

Inc(d);

for v := 1 to n do

if a\[u, v\] then

begin

dd\[v\] := False;

end;

end;

Writeln(g,d);

close(g);

end.
