NGUYỄN THỊ TÂM \_ THPT Phạm Ngũ Lão

**CAUHOI**

**Câu 3: Xâu tương đương (6đ)**

Xâu tương đương là xâu khi chia 2 thành nửa thì số lượng kí tự từng loại
ở 2 nửa bằng nhau (vd abdcbad, a, aa, abccab là xâu tương đương; xâu
rỗng, abca, abcd không phải là xâu tương đương).

**• Dữ liệu vào Xau.inp gồm:**

\- Dòng đầu tiên là số nguyên n (n ≤ 1000)

\- n dòng sau mỗi dòng là một xâu độ dài tối đa 250 chỉ có chữ cái
thường.

**• Dữ liệu ra Xau.out gồm:**

\- n dòng, dòng thứ i là 1 nếu xâu thứ i là xâu tương đương, là 0 nếu
xâu thứ i là xâu không tương đương.

+-----------------------------------+----------------------------------+
| **Xau.inp**                       | **Xau.out**                      |
+===================================+==================================+
| 5                                 | 1                                |
|                                   |                                  |
| abdcbad                           | 0                                |
|                                   |                                  |
| ab                                | 1                                |
|                                   |                                  |
| a                                 | 1                                |
|                                   |                                  |
| aa                                | 1                                |
|                                   |                                  |
| abcbca                            |                                  |
+-----------------------------------+----------------------------------+

> **DAPAN**
>
> var a:array\[\'a\'..\'z\'\] of integer;
>
> b:array\[1..1000\] of byte;
>
> c:array\[1..1000\] of string;
>
> i,n:integer;
>
> f1,f2:text;
>
> procedure nhap;
>
> var i:integer;
>
> begin
>
> assign(f1,\'xau.inp\');
>
> reset(f1);
>
> readln(f1,n);
>
> for i:=1 to n do readln(f1,c\[i\]);
>
> close(f1);
>
> end;
>
> function kt(s:string):byte;
>
> var j:char;
>
> i:integer;
>
> begin
>
> fillchar(a,sizeof(a),0);
>
> if length(s)=0 then exit(0);
>
> if length(s)=1 then exit(1);
>
> for i:=1 to (length(s) div 2) do
>
> begin
>
> inc(a\[s\[i\]\]);
>
> dec(a\[s\[length(s)+1-i\]\]);
>
> end;
>
> for j:=\'a\' to \'z\' do
>
> if a\[j\] \<\> 0 then exit(0);
>
> exit(1);
>
> end;
>
> procedure ghi;
>
> begin
>
> assign(f2,\'xau.out\');
>
> rewrite(f2);
>
> for i:=1 to n do writeln(f2,kt(c\[i\]));
>
> close(f2);
>
> end;
>
> BEGIN
>
> nhap;
>
> ghi;
>
> END.
>
> \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--HẾT\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--
