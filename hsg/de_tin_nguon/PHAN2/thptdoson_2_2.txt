Phạm Minh Khôi -- THPT Đồ Sơn

CAUHOI

**Bài 2.** Bé Minh Anh được mẹ mua cho rất nhiều đồ chơi hình chữ nhật
có kích thước a,b $(1 \leq a,b \leq 10^{6})$. Vì mới học về tính diện
tích nên bé muốn tính diện tích mỗi đồ chơi cùng số lượng điện tích cũa
mỗi hình tính được. Vì số lượng rất nhiều nên việc phân loại tính toán
rất lâu. Em hãy lập trình giúp bé, khi cần bé có thể trả lời được ngay
số lượng diện tích $S$ bất kỳ khi được hỏi và đưa ra hình có cạnh b lớn
nhất.

Lưu ý: Hình chữ nhật cạnh a là chiều dài phải lớn hơn cạnh b là chiều
rộng.

**Yêu cầu**: Bạn hãy giúp Bé Minh Anh giải quyết bài toán trên.

**Dữ liệu:** Vào từ file văn bản **BAI2.INP** gồm:

-   Dòng thứ nhất chứa một số nguyên dương $N$;

-   $N$ dòng tiếp theo mỗi dòng ghi 2 số
    $a_{i},b_{i}\ (1 \leq i \leq n)$ cách nhau một khoảng trống.

**Kết quả:** Ghi ra file văn bản **BAI2.OUT** hai số nguyên là số tìm
được cùng với tổng các chữ số của nó cách nhau một dấu cách trống.

**Ví dụ:**

+---------------------+------------------+-----------------------------+
| **BAI2.INP**        | **BAI2.OUT**     | **Giải thích**              |
+=====================+==================+=============================+
| 6 20                | 4 4              | 3 2 đúng tính chất →        |
|                     |                  | $HCN(3 \times 2)$           |
| 3 2                 |                  |                             |
|                     |                  | 1 6 sai tính chất →         |
| 1 6                 |                  | $HCN(6 \times 1)$           |
|                     |                  |                             |
| 2 10                |                  | 2 10 sai tính chất →        |
|                     |                  | $HCN(10 \times 2)$          |
| 10 2                |                  |                             |
|                     |                  | 10 2 đúng tính chất →       |
| 5 4                 |                  | $HCN(10 \times 2)$          |
|                     |                  |                             |
| 4 5                 |                  | 5 4 đúng tính chất →        |
|                     |                  | $HCN(5 \times \mathbf{4})$  |
|                     |                  |                             |
|                     |                  | 4 5 sai tính chất →         |
|                     |                  | $HCN(5 \times \mathbf{4})$  |
|                     |                  |                             |
|                     |                  | Vậy có 4 hình               |
|                     |                  | $S = 20,\ b_{Max} = 4$      |
+---------------------+------------------+-----------------------------+

***Ràng buộc***: - 80% subtask
$\left( 10 \leq a_{i} \leq 100.000.000 \right);N \leq 1000$;

\- 20% subtask $\left( a_{i} \geq 10.000 \right);N \leq 1000.000$;

DAPAN

**Bài 2 (6 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu**                               |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 2 | 1  | 1.2 |                                                 |
|       | -5 |     |                                                 |
| (6    |    |     |                                                 |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+

**\
**

Program bai2;

Const fi=\'bai2.inp\';

fo=\'bai2.out\';

var a,b: Longint;

s:array\[1..100000000\] of longint;

i,j,N,K,Max:Longint;

Procedure doc_xl;

var r:longint;

Begin

assign(input,fi); reset(input);

assign(output,fo); rewrite(output);

Readln(N,K);

max:=-1;

fillchar(s,sizeof(s),0);

for i:=1 to n do

Begin

readln(a,b);

inc(s\[a\*b\]);

r:=b;

if r\>a then r:=a;

if max \< r then max:=r;

End;

Write(s\[k\],\' \',Max);

end;

Begin

doc_Xl;

End.
