NGUYỄN VĂN THIẾT - THPT NGUYỄN ĐỨC CẢNH

> CAUHOI

**Bài 2. Đếm sách**

Trong một cửa hiệu bán sách. Để dễ quản lý các loại sách có trong hiệu
sách, người bán hàng đã gán tương ứng mỗi loại sách với một số nguyên
dương, hai loại sách khác nhau có số được gán là hai số nguyên khác
nhau. Em hãy viết chương trình giúp chủ cửa hiệu tìm loại sách còn nhiều
nhất và số lượng còn là bao nhiêu.

**Dữ liệu:** Nhập từ tệp số $N\ (N \leq 100)$ là số lượng sách còn lại
trong cửa hiệu, tiếp theo là $N$ số nguyên mô tả loại sách của $N$ quyển
sách này, hai số nguyên liên tiếp cách nhau một dấu trống. Giá trị các
số nguyên không vượt quá $10^{9}$.

**Kết quả:** In ra tệp trên một dòng số xuất hiện nhiều nhất và số lần
xuất hiện của nó, hai giá trị này in cách nhau một dấu trống. Nếu như có
nhiều số có số lần xuất hiện nhiều nhất thì in số có giá trị bé nhất.

**Ví dụ:**

+---------------------------------------+------------------------------+
| **BAI2.INP**                          | **BAI2.OUT**                 |
+=======================================+==============================+
| 11                                    | 2 4                          |
|                                       |                              |
| 1 2 2 3 2 4 5 2 6 7 6                 |                              |
+---------------------------------------+------------------------------+

> *Ghi chú:* Bài được chấm qua 10 test, mỗi test đúng được 0,25 điểm
> trong đó

-   6 test có giá trị các mã số trong phạm vị từ 1 đến 1000

-   4 test có giá trị các mã số trong phạm vi từ 1 đến 10^9^.

**Dap án**

**var N: longint;**

**a: array\[0..101\] of longint;**

**fi,fo:text;**

**dapso, soluong, ten, nhat: longint;**

**BEGIN**

**Assign(fi,\'bai2.inp\');reset(fi);**

**Assign(fo,\'bai2.out\');rewrite(fo);**

**read(fi,N);**

**for i:=1 to N do read(fi,a\[i\]);**

**dapso:=0; nhat=0;**

**for i:=1 to n do**

**begin**

**soluong:=0;**

**for j:=1 to n do if a\[i\]=a\[j\] then inc(soluong);**

**if (soluong\>dapso) or ((soluong=dapso) and (a\[i\]\<nhat)) then**

**begin**

**dapso:=soluong;**

**nhat:=a\[i\];**

**end;**

**end;**

**writeln(fo,nhat,\' \',dapso);**

**close(fi); close(fo);**

**END.**
