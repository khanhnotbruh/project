Trần Thị Chi -- THPT Cát Bà

CAUHOI

**Điểm nằm trên đường tròn (6 điểm)**

Có N điểm trong mặt phẳng tọa độ. Số điểm không quá 100 và các giá trị
tuyệt đối không quá 200. Hãy cho biết có bao nhiêu điểm nằm trên đường
tròn có tâm là gốc tọa độ và bán kính R.

-   Dữ liệu vào: tệp văn bản DUONGTRON.INP có cấu trúc:

```{=html}
<!-- -->
```
-   Dòng thứ nhất ghi số nguyên dương N và R

-   Trong N dòng tiếp theo, mỗi dòng ghi 2 số nguyên Xi và Yi là giá trị
    hoành độ và tung tộ của điểm thứ i.

```{=html}
<!-- -->
```
-   Dữ liệu ra: tệp văn bản DUONGTRON.OUT chứa một số duy nhất là số
    điểm thuộc hình tròn

-   Ví dụ:

+-----------------------------------+----------------------------------+
| DUONGTRON.INP                     | DUONGTRON.OUT                    |
+===================================+==================================+
| 4 3                               | 1                                |
|                                   |                                  |
| 2 2                               |                                  |
|                                   |                                  |
| 2 4                               |                                  |
|                                   |                                  |
| 3 0                               |                                  |
|                                   |                                  |
| 3 3                               |                                  |
+-----------------------------------+----------------------------------+

DAPAN

**Điểm nằm trên đường tròn**

Có 3 bộ test, mỗi bộ chạy đúng: 2 điểm

+-----+--------------------------------+------------------------------+
| *   | **DUONGTRON.INP**              | **DUONGTRON.OUT**            |
| *St |                                |                              |
| t** |                                |                              |
+=====+================================+==============================+
| 1   | 4 3                            | 1                            |
|     |                                |                              |
|     | 2 2                            |                              |
|     |                                |                              |
|     | 2 4                            |                              |
|     |                                |                              |
|     | 3 0                            |                              |
|     |                                |                              |
|     | 3 3                            |                              |
+-----+--------------------------------+------------------------------+
| 2   | 2 2                            | 0                            |
|     |                                |                              |
|     | 3 10                           |                              |
|     |                                |                              |
|     | 2 5                            |                              |
+-----+--------------------------------+------------------------------+
| 3   | 5 4                            | 3                            |
|     |                                |                              |
|     | 0 4                            |                              |
|     |                                |                              |
|     | 3 4                            |                              |
|     |                                |                              |
|     | -4 0                           |                              |
|     |                                |                              |
|     | 0 6                            |                              |
|     |                                |                              |
|     | 4 0                            |                              |
+-----+--------------------------------+------------------------------+

program bai1;

var i,n,m,dem,r:integer;

a,b:array\[1..100\] of integer;

f:text;

BEGIN

assign(f,\'duongtron.inp\');

reset(f);

readln(f,n,r);

for i:=1 to n do

readln(f,a\[i\],b\[i\]);

close(f);

dem:=0;

for i:=1 to n do

if sqrt(a\[i\]\*a\[i\]+b\[i\]\*b\[i\])=r then

inc(dem);

assign(f ,\'duongtron.out\');

rewrite(f);

write(f,dem);

close(f);

END.

**=======================\
**
