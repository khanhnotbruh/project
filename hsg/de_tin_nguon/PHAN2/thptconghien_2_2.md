Nguyễn Thị Duyên -- THPT Cộng Hiền

**CÂU HỎI**

**Bài 2. Tổng chữ số (6 điểm).**

Cho một số tự nhiên A có N chữ số(N\<=200). Hãy tính tổng các chữ số của
số A và cho biết chữ số lớn nhất là chữ số mấy và ở vị trí nào tính từ
phải qua trái.

**Dữ liệu vào**: file CHUSO.INP, ghi số tự nhiên A.

**Dữ liệu ra**: flie CHUSO.OUT, ghi:

-   Dòng 1: tổng các chữ số.

-   Dòng 2: số lớn nhất.

-   Dòng 3: ghi vị trí xuất hiện của chữ số lớn nhất.

**Ví dụ:**

+----------------------------------+-----------------------------------+
| **BAI2.INP**                     | **BAI2.OUT**                      |
+==================================+===================================+
| 1239755964                       | 51                                |
|                                  |                                   |
|                                  | 9                                 |
|                                  |                                   |
|                                  | 3                                 |
+----------------------------------+-----------------------------------+

*Ghi chú:* Bài được chấm qua 10 test, mỗi test đúng được 0,6 điểm:

-   6 test có độ dài của mỗi xâu ký tự không vượt quá 255

-   4 test có độ dài của mỗi xâu ký tự không vượt quá 1000

**ĐÁP ÁN**

program tongchuso;

var fi,fo:text;

s,tg,i,max,vt :longint; A:ansistring;

procedure docdl;

begin

assign(fi,\'tongchu.inp\');

assign(fo,\'tongchu.out\');

reset(fi);

readln(fi,A);

close(fi);

rewrite(fo);

end;

begin

docdl; s:=0; max:=0;

for i:=1 to length(A) do

begin

tg:=ord(A\[i\])-48;

if tg\>=max then begin max:=tg; vt:=i; end;

s:=s+tg;

end;

writeln(fo,s);

writeln(fo,max);

writeln(fo,vt);

close(fo);

end.
