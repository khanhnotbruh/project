**Nguyễn Đức Hải -- THPT Quang Trung**

**CÂU HỎI**

**Mua sách**

Nhà sách Tiền Phong có chương trình khuyến mại *"mua 2 tặng 1"*, do đó
mỗi khách hàng khi lấy ba quyển sách thì chỉ phải trả tiền hai quyển và
được tặng một quyển có giá rẻ nhất trong ba quyển đó. Vì thế khi khách
hàng mua nhiều sách thì phụ thuộc vào việc sắp xếp các nhóm ba quyển
sách thế nào để thanh toán với số tiền ít nhất có thể.

Cho giá tiền các cuốn sách cần mua, viết chương trình tính tổng số tiền
mua sách ít nhất có thể theo chương trình khuyến mại của nhà sách.

**Input:** Dữ liệu được cho trong tập tin **BOOK.INP** gồm:

\- Dòng 1: Số nguyên $N$ $(1 \leq N \leq 100000)$ -- số lượng sách khách
hàng cần mua.

\- $N$ dòng tiếp theo mỗi dòng là một số nguyên
$C_{i}(1 \leq C_{i} \leq 100000)$ -- giá tiền mỗi cuốn sách.

**Output:** Kết quả ghi vào tập tin **BOOK.OUT** gồm một số nguyên duy
nhất là số tiền ít nhất phải trả

**Ví dụ:**

+--------------+----------------+--------------------------------------+
| **BOOK.INP** | **BOOK.OUT**   | **Giải thích**                       |
+==============+================+======================================+
| 4            | 8              | Có thể xếp sách thành các nhóm:      |
|              |                | $(3,\ 2,\ 2)$ và $(3)$               |
| 3            |                |                                      |
|              |                |                                      |
| 2            |                |                                      |
|              |                |                                      |
| 3            |                |                                      |
|              |                |                                      |
| 2            |                |                                      |
+--------------+----------------+--------------------------------------+
| 6            | 21             | Có thể xếp sách thành các nhóm:      |
|              |                | $(6,\ 4,\ 5)$ và $(5,\ 5,\ 5)$       |
| 6            |                |                                      |
|              |                |                                      |
| 4            |                |                                      |
|              |                |                                      |
| 5            |                |                                      |
|              |                |                                      |
| 5            |                |                                      |
|              |                |                                      |
| 5            |                |                                      |
|              |                |                                      |
| 5            |                |                                      |
+--------------+----------------+--------------------------------------+

ĐÁP ÁN

#include \<cstdio\>

#include \<algorithm\>

using namespace std;

#define MAXN 100000

typedef long long llint;

int C\[MAXN\];

bool cmp(int a, int b) {

return a \> b;

}

int main(void) {

FILE \*fi, \*fo;

fi = fopen(\"book.inp\",\"r\");

fo = fopen(\"book.out\",\"w\");

int n; fscanf (fi,\"%d\", &n);

for (int i = 0; i \< n; i++) {

fscanf (fi,\"%d\", &C\[i\]);

}

sort(C, C+n, cmp);

llint sol = 0;

for (int i = 0; i \< n; i++) {

if (i % 3 == 2) {

continue;

}

sol += C\[i\];

}

fprintf (fo,\"%lld\\n\", sol);

fclose(fi);

fclose(fo);

return 0;

}
