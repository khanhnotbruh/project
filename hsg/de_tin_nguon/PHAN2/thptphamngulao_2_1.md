NGUYỄN THỊ TÂM \_ THPT Phạm Ngũ Lão

**CAUHOI**

**Bài 2. Đếm sách (8đ)**

Trong một cửa hiệu bán sách. Để dễ quản lý các loại sách có trong hiệu
sách, người bán hàng đã gán tương ứng mỗi loại sách với một số nguyên
dương, hai loại sách khác nhau có số được gán là hai số nguyên khác
nhau. Em hãy viết chương trình giúp chủ cửa hiệu tìm loại sách còn nhiều
nhất và số lượng còn là bao nhiêu.

**Dữ liệu:** Nhập từ bàn phím số $N\ (N \leq 1000)$ là số lượng sách còn
lại trong cửa hiệu, tiếp theo là $N$ số nguyên mô tả loại sách của $N$
quyển sách này, hai số nguyên liên tiếp cách nhau một dấu trống. Giá trị
các số nguyên không vượt quá $10^{9}$.

**Kết quả:** In ra màn hình trên một dòng số xuất hiện nhiều nhất và số
lần xuất hiện của nó, hai giá trị này in cách nhau một dấu trống. Nếu
như có nhiều số có số lần xuất hiện nhiều nhất thì in số có giá trị bé
nhất.

**Ví dụ:**

+---------------------------------------+------------------------------+
| **BAI2.INP**                          | **BAI2.OUT**                 |
+=======================================+==============================+
| 11                                    | 2 4                          |
|                                       |                              |
| 1 2 2 3 2 4 5 2 6 7 6                 |                              |
+---------------------------------------+------------------------------+

> *Ghi chú:* Bài được chấm qua 10 test, mỗi test đúng được 0,25 điểm
> trong đó:

-   6 test có giá trị các mã số trong phạm vị từ 1 đến 1000.

-   4 test có giá trị các mã số trong phạm vi từ 1 đến 10^9^.

**DAPAN**

var N,i,j: longint;

> a: array\[1..1001\] of int64;
>
> dapso, soluong, ten, nhat: int64;
>
> f,g:text;
>
> BEGIN
>
> assign(g,\'bai2.inp\');reset(g);
>
> assign(f,\'bai2.out\');rewrite(f);
>
> readln(g,N);
>
> for i:=1 to n do read(g,a\[i\]);
>
> dapso:=0; nhat:=0;
>
> for i:=1 to n do
>
> begin
>
> soluong:=0;
>
> for j:=1 to n do if a\[i\]=a\[j\] then inc(soluong);
>
> if (soluong\>dapso) or ((soluong=dapso) and (a\[i\]\<nhat)) then
>
> begin
>
> dapso:=soluong;
>
> nhat:=a\[i\];
>
> end;
>
> end;
>
> write(f,nhat,\' \',dapso);
>
> close(f);close(g);
>
> END.
