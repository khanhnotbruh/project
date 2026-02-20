Nguyễn Thị Nhung - THPT Mạc Đĩnh Chi

**CAUHOI**

**XÂU TƯƠNG ĐƯƠNG (6 điểm)**

Xâu tương đương là xâu khi thành 2 nửa thì số lượng kí tự từng loại ở 2
nửa bằng nhau (vd aa, abccab là xâu tương đương; xâu rỗng, abca, abcd
không phải là xâu tương đương).

-   **Dữ liệu vào:** Vào từ file văn bản **Bai1.INP**

```{=html}
<!-- -->
```
-   Dòng đầu tiên là số nguyên n (n ≤ 1000)

-   n dòng sau mỗi dòng là một xâu độ dài tối đa 250 chỉ có chữ cái
    thường.

```{=html}
<!-- -->
```
-   **Dữ liệu ra:** Ghi ra file văn bản **Bai1.OUT**

```{=html}
<!-- -->
```
-   n dòng, dòng thứ i là 1 nếu xâu thứ i là xâu tương đương, là 0 nếu
    xâu thứ i là xâu không tương đương.

**Ví dụ:**

+----------------------------------+-----------------------------------+
| **Bai1.inp**                     | **Bai1.out**                      |
+==================================+===================================+
| 5                                | 1                                 |
|                                  |                                   |
| abdcbad                          | 0                                 |
|                                  |                                   |
| ab                               | 1                                 |
|                                  |                                   |
| a                                | 1                                 |
|                                  |                                   |
| aa                               | 1                                 |
|                                  |                                   |
| abcbca                           |                                   |
+----------------------------------+-----------------------------------+

**TRALOI**

var a:array\[\'a\'..\'z\'\] of integer;

b:array\[1..1000\] of byte;

c:array\[1..1000\] of string;

i,n:integer;

f1,f2:text;

procedure Doc;

var i:integer;

begin

assign(f1,\'Bai1.inp\');

reset(f1);

readln(f1,n);

for i:=1 to n do readln(f1,c\[i\]);

close(f1);

end;

function kt(s:string):byte;

var j:char;

i:integer;

begin

fillchar(a,sizeof(a),0);

if length(s)=0 then exit(0);

if length(s)=1 then exit(1);

for i:=1 to (length(s) div 2) do

begin

inc(a\[s\[i\]\]);

dec(a\[s\[length(s)+1-i\]\]);

end;

for j:=\'a\' to \'z\' do

if a\[j\] \<\> 0 then exit(0);

exit(1);

end;

procedure ghi;

begin

assign(f2,\'Bai1.out\');

rewrite(f2);

for i:=1 to n do writeln(f2,kt(c\[i\]));

close(f2);

end.
