**Nguyễn Hoàn Phúc -- THPT Trần Hưng Đạo**

**CAUHOI**

**Câu 2: Đếm đoạn**

Tên file: count.pas\
Dữ liệu vào: count.inp\
Dữ liệu ra: count.out

Cho mảng $A$ có $N$ số nguyên. Một đoạn con của $A$ là một dãy các phần
tử liên tiếp trong $A$. Hãy đếm số đoạn con của $A$ có giá trị lớn nhất
lớn hơn hoặc bằng $M$.

**Dữ liệu:**

-   Dòng 1: Ghi 2 số nguyên $N,\ M$, các số cách nhau 1 khoảng trống.

-   Dòng 2: Ghi $N$ số nguyên của dãy $A$, các số cách nhau 1 khoảng
    trống.

**Kết quả:**

Gồm 1 dòng duy nhất ghi kết quả.

**Ví dụ:**

+----------------------------------+-----------------------------------+
| nmax.inp                         | nmax.out                          |
+==================================+===================================+
| 5 1                              | 15                                |
|                                  |                                   |
| 1 1 1 1 1                        |                                   |
+----------------------------------+-----------------------------------+

+----------------------------------+-----------------------------------+
| nmax.inp                         | nmax.out                          |
+==================================+===================================+
| 4 4                              | 8                                 |
|                                  |                                   |
| 1 5 2 5                          |                                   |
+----------------------------------+-----------------------------------+

**\
**

**DAPAN**

**Giới hạn:**

-   Có $30\%$ số test ứng với $30\%$ số điểm có $1 \leq N \leq 100.$

-   Có $30\%$ số test khác ứng với $30\%$ số điểm có
    $1 \leq N \leq 5000.$

-   Có 40% số test còn lại ứng với $40\%$ số điểm có
    $1 \leq N \leq 10^{5}.$

-   Trong tất cả các test có $0 \leq A_{i} \leq 10^{6}$

> CODE
>
> uses math;
>
> var q,d,z,n,i,s,m,k,j:longint;
>
> f, g:text;
>
> a, b:array\[0..1000000\]of qword;
>
> begin
>
> assign(f,\'nmax.inp\');reset(f);
>
> assign(g,\'nmax.out\');rewrite(g);
>
> readln(f,n,m);
>
> // s:=0;
>
> // d:=0;
>
> for i:=1 to n do
>
> read(f,a\[i\]);
>
> q:=0;
>
> for i:=1 to n do
>
> begin
>
> if a\[i\]\>=m then
>
> begin
>
> q:=i;
>
> b\[i\]:=b\[i-1\]+q;
>
> end
>
> else
>
> b\[i\]:=b\[i-1\]+q;
>
> end;
>
> writeln(g,b\[n\]);
>
> close(f);
>
> close(g);
>
> End.
