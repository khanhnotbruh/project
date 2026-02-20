**NGUYỄN THỊ THÚY -- TRƯỜNG THPT THÁI PHIÊN**

**CÂU HỎI**

**Bài 3: Chọn dãy con có tổng lớn nhất**

Cho dãy n số nguyên dương a~1~, a~2~, ..., a~n~. Một dãy con của dãy nói
trên là dãy được lập từ dãy đã cho bằng cách bỏ đi một số số hạng của
dãy và giữ nguyên trật tự các số còn lại. Hãy tìm một dãy con thoả mãn
tính chất:

-   Không có ba số liên tiếp nào của dãy ban đầu có mặt trong dãy con

-   Trong ba số liên tiếp của dãy ban đầu có ít nhất một số có mặt trong
    dãy con

-   Tổng các số hạng của dãy con được chọn là lớn nhất có thể được.

**Dữ liệu:** Vào từ file CHONSO.INP:

-   Dòng đầu tiên chứa số nguyên dương N (N≤1000000)

-   N dòng tiếp theo, dòng thứ i chứa số nguyên dương a~i~ (a~i~≤30000)

**Kết quả:** Gho ra file văn bản CHONSO.OUT:

-   Dòng đầu tiên chứa hai số nguyên dương T và M trong đó M là số lượng
    các số hạng của dãy con được chọn, T là tổng các số của dãy chon
    được chọn.

-   M dòng tiếp theo lần lượt mô tả các số hạng của dãy con được chọn,
    dòng thứ k ghi số j~k~ là chỉ só của số hạng được chọn thứ k.

*Ví dụ:*

+----------------------------------+-----------------------------------+
| CONSO.INP                        | CHONSO.OUT                        |
+==================================+===================================+
| **6**                            | **21 4**                          |
|                                  |                                   |
| **2 6 5 1 7 3**                  | **2**                             |
|                                  |                                   |
|                                  | **3**                             |
|                                  |                                   |
|                                  | **5**                             |
|                                  |                                   |
|                                  | **6**                             |
+----------------------------------+-----------------------------------+

**ĐÁP ÁN**

**Bài 3: Dãy có tổng dương dài nhất**

program doan_duong_max;

const

fin = \'ddmax.inp\';

fout = \'ddmax.out\';

max = 10000;

var

fi,fo : text;

a : array\[0..max\] of longint;

min : array\[0..max\] of integer;

n : longint;

ddmax,x,y : longint;

(\*\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--\*)

procedure nhapfile;

var

i : longint;

begin

assign(fi,fin);

reset(fi);

readln(fi,n);

for i := 1 to n do readln(fi,a\[i\]);

close(fi);

end;

(\*\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--\*)

procedure ghifile;

begin

assign(fo,fout);

rewrite(fo);

writeln(fo,ddmax);

writeln(fo,x);

writeln(fo,y);

close(fo);

end;

(\*\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--\*)

procedure khoitao;

var

i : longint;

begin

a\[0\] := 0;

for i := 1 to n do a\[i\] := a\[i-1\] + a\[i\];

min\[0\] := 0;

for i := 1 to n do

if a\[i\] \>= a\[min\[i-1\]\] then min\[i\] := min\[i-1\]

else min\[i\] := i;

ddmax := 0; x := 0; y := 0;

end;

(\*\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--\*)

procedure xuli;

var

i,j,jj : longint;

begin

jj := n;

for i := n downto 0 do if min\[i\] = i then begin

for j := jj downto i do if a\[j\] \> a\[i\] then begin

if j - i \> ddmax then begin

ddmax := j - i;

x := i+1; y := j;

end;

break;

end;

jj := j;

end;

end;

(\*\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--\*)

begin

nhapfile;

khoitao;

xuli;

ghifile;

end.
