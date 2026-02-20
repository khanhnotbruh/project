PHẠM THỊ NHÂT - THPT NGUYỄN ĐỨC CẢNH

CAUHOI

Hai chị em Lan chơi trò chơi gieo xúc sắc. Lan là người gieo còn em là
người đoán. Lan gieo N lần và mỗi lần gieo thì con xúc sắc sẽ đổ một số
Si bất kì. (Biết rằng : 1 ≤ N ≤ 32000; 0 \< S~i~ ≤ 32000; 1 ≤ i ≤ N).
Lan đố em liệt kê các con xúc sắc có số lần xuất hiện lớn hơn một lần.

**Dữ liệu** : Vào từ file văn bản BAI2.INP gồm có:

> \- Dòng 1: Ghi số nguyên dương N.
>
> \- Dòng 2: Ghi N số nguyên dương là giá trị các phần tử của tập hợp S,
> các số được ghi cách nhau ít nhất một dấu cách.

**Kết quả** : Ghi ra tệp văn bản BAI2.OUT :

> \- Kết quả trên nhiều dòng ( nếu có ), dòng thứ i ghi 2 số s~i~ d~i~,
> hai số cách nhau một dấu cách. Trong đó s~i~ là phần tử xuất hiện
> trong S lớn hơn một lần và d~i~ tương ứng là số lần s~i~ xuất hiện.

**Ví dụ :**

+----------------------+-----------------------+----------------------+
| **BAI1.INP**         | **BAI1.OUT**          | **GIẢI THÍCH**       |
+======================+=======================+======================+
| 7                    | 3 2                   | Dòng 1 số 3 xuất     |
|                      |                       | hiện 2 lần.          |
| 2 5 5 3 5 3 9        | 5 3                   |                      |
|                      |                       | Dòng 2 số 5 xuất     |
|                      |                       | hiện 3 lần.          |
+----------------------+-----------------------+----------------------+

DAPAN

**Program bai4;**

const csmax=10000;

var s:array\[1..csmax\] of word;

n,i,x:word; f1,f2:text;

**BEGIN**

assign(f1,\'DE1_04.inp\'); reset(f1);

assign(f2,\'DE1_04.out\'); rewrite(f2);

readln(f1,n);

for i:= 1 to n do

begin

read(f1,x); inc(s\[x\]);

end;

for i:= 1 to n do if s\[i\]\>1 then writeln(f2,i,\' \',s\[i\]);

close(f1); close(f2);

**END.**
