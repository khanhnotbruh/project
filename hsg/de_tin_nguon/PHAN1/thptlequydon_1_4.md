**Vũ Thị Hiền -- THPT Lê Quý Đôn**

**Bài 1:** **Tính tổng**

Trên một màn hình lớn, người ta lần lượt cho hiện ra các số của một dãy
gồm N số nguyên không âm a~1~, a~2~, ..., a~N~ và cứ lặp đi lặp lại như
thế (nghĩa là sau khi a~i~ xuất hiện vài giây đến lượt a~i+1~ xuất hiện,
số xuất hiện sau a~N~ là a~1~).

***Yêu cầu:*** Bạn được đề nghị tính tổng của K số nguyên liên tiếp xuất
hiện trên màn hình bắt đầu từ số nguyên thứ B.

***Dữ liệu vào*:** Chứa trong file BAI1.INP gồm hai dòng:

\+ Dòng đầu tiên ghi ba số nguyên N, K, và B, 1 ≤ N ≤10^4^; 1 ≤ K ≤ 2.
10^4^ ; 1 ≤ B ≤ 10^9^.

\+ Trong N dòng sau, dòng thứ i chứa số a~i~ (a~i~ \< 2.10^9^).

***Dữ liệu ra*:** Ghi ra file BAI1.OUT một số là tổng tìm được.

***Ví dụ:***

+-----------------------------------+-----------------------------------+
| **BAI1.INP**                      | **BAI1.OUT**                      |
+-----------------------------------+-----------------------------------+
| 5 7 6                             | 32                                |
|                                   |                                   |
| 2                                 |                                   |
|                                   |                                   |
| 3                                 |                                   |
|                                   |                                   |
| 6                                 |                                   |
|                                   |                                   |
| 7                                 |                                   |
|                                   |                                   |
| 9                                 |                                   |
+-----------------------------------+-----------------------------------+

**Bài 1: 6 điểm**

program BAI1;

const fi=\'BAI1.inp\';

fo=\'BAI1.out\';

nmax=10003;

var a:array\[1..nmax\]of int64;

n,k,b:longint;

kq:int64;

f,g:text;

procedure nhapdulieu;

var i:integer;

begin

assign(f,fi);

reset(f);

readln(f,n,k,b);

for i:=1 to n do readln(f,a\[i\]);

close(f);

end;

procedure xuly;

var i,j:longint;

begin

kq:=0;

for i:=b to b+k-1 do

kq:=kq+a\[(i-1) mod N +1\];

assign(g,fo);

rewrite(g);

write(g,kq);

close(g);

end;

Begin

nhapdulieu;

xuly;

End.
