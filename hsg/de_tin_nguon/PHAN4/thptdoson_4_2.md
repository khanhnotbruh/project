Phạm Minh Khôi -- THPT Đồ Sơn

CAUHOI

**Bài 4.** Một anh nông dân chăn nuôi gà, đến lứa thu hoạch anh muốn bán
chúng một cách nhanh nhất có thể, đầu tiên anh muốn bán lẻ từng con và
anh nhận ra bán như vậy rất lâu. Gà cần bán có hai loại trọng lượng:
chẵn hoặc lẻ, có thể bán chúng theo cặp. Bác trang trại kế bên vừa thu
hoạch xong nói với anh rằng trọng lượng càng cao thì càng có giá. Nghe
vậy anh quyết định gà bé nhất trọng lượng chẵn thì xếp với gà bé nhất
trọng lượng lẻ; gà bé nhì trọng lượng chẵn thì xếp với gà bé nhì trọng
lượng lẻ...(chẵn trước, lẻ sau). Vì hai loại không bằng nhau nên các con
gà chưa được xếp cặp còn thừa ra thì cũng theo trọng lượng tăng dần.

**Yêu cầu**: Bạn hãy giúp Anh nông dân xếp cặp đàn gà theo yêu cầu.

**Dữ liệu:** Vào từ file văn bản **BAI4.INP** gồm:

-   Dòng thứ nhất chứa một số nguyên dương $n$;

-   Dòng tiếp theo chứa $n$ số nguyên dương $a_{i}\ (1 \leq i \leq n)$.

**Kết quả:** Ghi ra file văn bản **BAI4.OUT** dãy số là trọng lượng của
dàn gà theo yêu cầu, mỗi số ngăn cách nhau một dấu cách trống.

***Chú ý***: *Mỗi file Input là một lứa gà cần bán, có lứa có thể chỉ
một loại trọng lượng chẵn hoặc lẻ.*

+-----------------------+-----------------------+----------------------+
| **BAI4.INP**          | **BAI4.OUT**          | **Giải thích**       |
+=======================+=======================+======================+
| 9                     | [2]{.underline} *1*   | Gà trọng lượng chẵn  |
|                       | [4]{.underline} *3*   | 2 4 6 tăng           |
| 11 7 1 5 3 2 4 6 9    | [6]{.underline} *5 7  |                      |
|                       | 9 11*                 | Gà trọng lượng lẻ 1  |
|                       |                       | 3 5 tăng             |
|                       |                       |                      |
|                       |                       | Còn lại 7 9 11 tăng  |
+-----------------------+-----------------------+----------------------+

***Ràng buộc***: - 80% subtask
$\left( 10 \leq a_{i} \leq 100.000.000 \right);N \leq 500.000$;

\- 20% subtask
$\left( a_{i} \geq 100.000.000 \right);N \leq 10.000.000$;

DAPAN

**Bài 4 (9 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu**                               |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 4 | 1  | 1   |                                                 |
|       | -9 |     |                                                 |
| (9    |    |     |                                                 |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+

#include \<bits/stdc++.h\>

using namespace std;

const long long asize = 100001;

int main() {

ios_base::sync_with_stdio(false);

cin.tie(nullptr);

cout.tie(nullptr);

long long N;

long long A\[asize\];

long long C\[asize\];

//fill(A, A + asize, 0);

//fill(C, C + asize, 0);

ifstream ifile(\"Bai4.inp\");

ofstream ofile(\"Bai4.out\");

if (ifile.is_open() && ofile.is_open()) {

ifile \>\> N;

for (long long i = 0; i \< N; i++) ifile \>\> A\[i\];

sort(A, A + N);

long long dc = 0;

long long dl = 0;

for (long long i = 0; i \< N; i++)

if (A\[i\] % 2 == 0)

{

dc++;

C\[dc \* 2 - 2\] = A\[i\];

}

else

{

dl++;

C\[dl \* 2 - 1\] = A\[i\];

}

long long dem = 0;

for (long long i = 0; i \< N \* 2 ; i++)

{

if (C\[i\] != 0)

{

if (dem\<N) ofile \<\< C\[i\] \<\< \" \";

else ofile \<\< C\[i\];

dem++;

}

}

ifile.close();

ofile.close();

}

return 0;

}
