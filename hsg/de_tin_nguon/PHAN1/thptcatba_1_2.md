Trần Thị Chi -- THPT Cát Bà

CAUHOI

**Dãy con lẻ tăng dài nhất (6 điểm)**

Cho dãy số nguyên A1, A2, ... An. Tìm dãy con tăng dài nhất mà các phần
tử đều lẻ.

-   Dữ liệu: vào từ tệp văn bản DAYLE.INP có cấu trúc:

```{=html}
<!-- -->
```
-   Dòng thứ nhất ghi số n

-   Dòng thứ hai ghi n số tự nhiên, giữa các số cách nhau một dấu cách.

```{=html}
<!-- -->
```
-   Dữ liêụ ra: ra tệp văn bản DAYLE.OUT có cấu trúc:

```{=html}
<!-- -->
```
-   Dòng thứ nhất ghi số lượng phần tử của dãy con lẻ tăng dài nhất

-   Dòng thứ hai ghi dãy con lẻ tăng dài nhất

```{=html}
<!-- -->
```
-   Ví dụ:

+-------------------------------------+--------------------------------+
| DAYLE.INP                           | DAYLE.OUT                      |
+=====================================+================================+
| 7                                   | 3                              |
|                                     |                                |
| 1 3 4 6 3 7 9                       | 3 7 9                          |
+-------------------------------------+--------------------------------+

(Nếu có nhiều dãy thì đưa ra dãy cuối cùng)

DAPAN

**Dãy con lẻ tăng dài nhất**

Có 3 bộ test, mỗi bộ chạy đúng:2 điểm

+-----+--------------------------------+------------------------------+
| *   | **DAYLE.INP**                  | **DAYLE.OUT**                |
| *St |                                |                              |
| t** |                                |                              |
+=====+================================+==============================+
| 1   | 7                              | 3                            |
|     |                                |                              |
|     | 1 3 4 6 3 7 9                  | 3 7 9                        |
+-----+--------------------------------+------------------------------+
| 2   | 8                              | 4                            |
|     |                                |                              |
|     | 1 3 7 15 2 1 9 13              | 1 3 7 15                     |
+-----+--------------------------------+------------------------------+
| 3   | 12                             | 4                            |
|     |                                |                              |
|     | 1 3 5 7 4 9 3 7 11 13 1 9      | 3 7 11 13                    |
+-----+--------------------------------+------------------------------+

Var

f: text;

i,max,vt, N: integer;

A,C: array\[0..100\] of integer;

BEGIN

assign(f, \'DAYLE.INP\');

reset(f);

readln(f, N);

A\[0\]:=1;

for i:= 1 to N do

read(f, A\[i\]);

close(f);

fillchar(c,sizeof(c),0);

for i:=1 to N do

if (a\[i\] mod 2\<\>0) and (a\[i\]-a\[i-1\]\>0) then C\[i\]:=C\[i-1\]+1

else

if a\[i\] mod 2 =0 then C\[i\]:=0

else C\[i\]:=1;

assign(f, \'DAYLE.OUT\');

rewrite(f);

max:=0;

for i:=1 to N do

if C\[i\]\>=Max then

begin

max:=C\[i\];{C\[i\]\>= max de dua ra day cuoi}

vt:=i;

end;

writeln(f,max);

for i:=vt-max+1 to vt do

write(f, A\[i\], \' \');

close(f);

END.

===============================
