Bùi Mạnh Tuấn -- THPT Thủy Sơn

CAU HOI

**Bài IV: 10** **điểm. Điểm chốt**

Cho bảng A kích thước MxN. Phần tử Aij được gọi là điểm chốt nếu nó là
phần tử nhỏ nhất trong hàng của nó đồng thời là phần tử lớn nhất trong
cột của nó. Em hãy lập chương trình kiểm tra xem bảng A có điểm chốt hay
không?

Dữ liệu vào: cho file diemchot.inp gồm:

Dòng đầu tiên gồm 2 số M và N. (0![](media/image1.wmf)M,
N![](media/image2.wmf)1000)

M dòng tiếp theo, mỗi dòng gồm có N số nguyên của bảng A (các giá trị
cách nhau ít nhất 1 khoảng cách)

Dữ liệu ra: ghi ra file diemchot.out vị trí của các điểm chốt (nếu có)
hoặc dòng thông báo "Không có điểm chốt".

Ví dụ:

+--------------------------+-------------------------------------------+
| Diemchot.INP             | Diemchot.OUT                              |
+==========================+===========================================+
| 3 3                      | (2,2)                                     |
|                          |                                           |
| 15 3 9                   |                                           |
|                          |                                           |
| 55 4 6                   |                                           |
|                          |                                           |
| 76 1 2                   |                                           |
+--------------------------+-------------------------------------------+

Hoặc:

+--------------------------+-------------------------------------------+
| Diemchot.INP             | Diemchot.OUT                              |
+==========================+===========================================+
| 3 3                      | Khong co diem chot                        |
|                          |                                           |
| 15 10 5                  |                                           |
|                          |                                           |
| 55 4 6                   |                                           |
|                          |                                           |
| 76 1 2                   |                                           |
+--------------------------+-------------------------------------------+

Ràng buộc: 60% số điểm tương ứng với 60% số test có M,
N![](media/image3.wmf) 100

**\
**

**DAP AN**

+-------+----------------------------------------------------+---------+
| Bài   | const                                              |         |
| IV    |                                                    |         |
|       | Inp = \'diemchot.INP\';                            |         |
|       |                                                    |         |
|       | Out = \'diemchot.OUT\';                            |         |
|       |                                                    |         |
|       | MaxLongInt = 2147483647;                           |         |
|       |                                                    |         |
|       | var                                                |         |
|       |                                                    |         |
|       | Min, Max: array\[1..5000\] of LongInt;             |         |
|       |                                                    |         |
|       | m, n: Integer;                                     |         |
|       |                                                    |         |
|       | procedure ReadInput;                               |         |
|       |                                                    |         |
|       | var                                                |         |
|       |                                                    |         |
|       | i, j, k: Integer;                                  |         |
|       |                                                    |         |
|       | hf: Text;                                          |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | Assign(hf, Inp);                                   |         |
|       |                                                    |         |
|       | Reset(hf);                                         |         |
|       |                                                    |         |
|       | Readln(hf, m, n);                                  |         |
|       |                                                    |         |
|       | for i := 1 to m do Min\[i\] := MaxLongInt;         |         |
|       |                                                    |         |
|       | for j := 1 to n do Max\[j\] := -MaxLongInt;        |         |
|       |                                                    |         |
|       | for i := 1 to m do                                 |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | for j := 1 to n do                                 |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | Read(hf, k);                                       |         |
|       |                                                    |         |
|       | if Min\[i\] \> k then Min\[i\] := k;               |         |
|       |                                                    |         |
|       | if Max\[j\] \< k then Max\[j\] := k;               |         |
|       |                                                    |         |
|       | end;                                               |         |
|       |                                                    |         |
|       | Readln(hf);                                        |         |
|       |                                                    |         |
|       | end;                                               |         |
|       |                                                    |         |
|       | Close(hf);                                         |         |
|       |                                                    |         |
|       | end;                                               |         |
|       |                                                    |         |
|       | procedure WriteOutput;                             |         |
|       |                                                    |         |
|       | var                                                |         |
|       |                                                    |         |
|       | i, j: Integer;                                     |         |
|       |                                                    |         |
|       | Result: Boolean;                                   |         |
|       |                                                    |         |
|       | hf: Text;                                          |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | Result := False;                                   |         |
|       |                                                    |         |
|       | Assign(hf, Out);                                   |         |
|       |                                                    |         |
|       | Rewrite(hf);                                       |         |
|       |                                                    |         |
|       | Writeln(hf, \'Cac diem chot la: \');               |         |
|       |                                                    |         |
|       | for i := 1 to m do                                 |         |
|       |                                                    |         |
|       | for j := 1 to n do                                 |         |
|       |                                                    |         |
|       | if Min\[i\] = Max\[j\] then                        |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | Result := True;                                    |         |
|       |                                                    |         |
|       | Write(hf, \'(\', i, \',\', j, \'); \');            |         |
|       |                                                    |         |
|       | end;                                               |         |
|       |                                                    |         |
|       | if not Result then                                 |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | Rewrite(hf);                                       |         |
|       |                                                    |         |
|       | Write(hf, \'Khong co diem chot\');                 |         |
|       |                                                    |         |
|       | end;                                               |         |
|       |                                                    |         |
|       | Close(hf);                                         |         |
|       |                                                    |         |
|       | end;                                               |         |
+=======+====================================================+=========+
+-------+----------------------------------------------------+---------+
