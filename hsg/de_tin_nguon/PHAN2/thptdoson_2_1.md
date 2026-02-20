Phạm Minh Khôi -- THPT Đồ Sơn

CAUHOI

**Bài 2. SỐ THUẦN KHIẾT VÀ SỐ LAI**

Hai bạn Bi và Bon chơi trò chơi với các con số, có rất nhiều trò chơi mà
hai bạn đã tạo ra, một hôm hai bạn lại đề xuất một trò mới. Đầu tiên mỗi
bạn lấy ngẫu nhiên các con số, dãy của Bi có $M$ số $a_{1}a_{2}..a_{m}$,
dãy của Bon có $N$ số $b_{1}b_{2}..b_{n}$. Hai bạn tiến hành kiểm tra
dãy số của mình, Bi muốn xem dãy số của mình có bao nhiêu số thuần
khiết, còn Bon thì kiểm tra xem dãy số của mình có bao nhiêu số lai toàn
phần. Biết số thuần khiết là số chỉ dùng một loại chữ số, số lai là số
sử dụng *từ hai chữ số khác nhau* trở lên, số số lai toàn phần là số mà
*mỗi chữ số* của nó chỉ *xuất hiện đúng một lần*.

Dữ liệu vào: từ File BAI2.INP : gồm 3 dòng (mỗi số trong file input ngăn
cách nhau ít nhất một khoảng trống).

\- Dòng 1 Ghi số $M,N$;

\- Dòng 2 ghi $M$ số $a_{1}a_{2}..a_{m};$

\- Dòng 3 ghi $N$ số $b_{1}b_{2}..b_{n};$

$$({10 \leq a}_{i},b_{j} \leq 10^{9})$$

Kết quả ghi ra file: BAI2.OUT :

> \- Dòng duy nhất ghi 2 số $X$ là số thuần khiết,$\ Y$ là số lai toàn
> phần ngăn cách bởi một khoảng trống.

+--------------------------+-------------+----------------------------+
| BAI2.INP                 | BAI2.OUT    | GIẢI THÍCH                 |
+==========================+=============+============================+
| 5 7                      | 2 4         | Hai số thuần khiết: 11 888 |
|                          |             |                            |
| 11 23 67 888 43          |             | Bốn số lai toàn phần: 21   |
|                          |             | 34 56 90                   |
| 21 55 34 56 677 445 90   |             |                            |
+--------------------------+-------------+----------------------------+

DAPAN

**Bài 2 (6 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu (Theo bộ test)**                |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 2 | 1  | 1.5 |                                                 |
|       | -3 |     |                                                 |
| (6    |    |     |                                                 |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+
|       | 4  | 0   |                                                 |
|       | -5 | .75 |                                                 |
+-------+----+-----+-------------------------------------------------+

Program Bai2_BS;

const fi=\'Bai2.inp\';

fo=\'Bai2.out\';

var

A,m,n,i,j:longint;

Function KtThuan(x:Longint):boolean;

var tmp:longint;

Begin

Tmp:=x mod 10;

while x\<\>0 do

begin

if x mod 10 \<\> tmp then exit(false);

tmp:=tmp mod 10;

x:=x div 10;

end;

End;

Function KtToanVi(x:Longint):boolean;

var tmp:longint;

dem:array\[0..9\] of byte;

Begin

fillchar(dem,sizeof(dem),0);

while x\<\>0 do

Begin

tmp:=x mod 10;

inc(dem\[tmp\]);

if dem\[tmp\]\>1 then exit(false);

x:= x div 10;

End;

exit(true);

End;

Procedure mo;

Begin

assign(input,fi);

reset(input);

assign(output,fo);

Rewrite(output);

Readln(M,N);

End;

Procedure xl;

Var tk,tv:LongInt;

Begin

tk:=0; tv:=0;

for i:=1 to M do

Begin

read(A);

if ktThuan(A) then inc(tk); //b2bs.out

End;

readln(input);

for i:=1 to N do

Begin

read(A);

if ktToanVi(A) then inc(tv);

End;

Write(tk,\' \',tv);

End;

BEGIN

mo;

xl;

END.
