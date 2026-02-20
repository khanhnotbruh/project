**Bùi Thị Huệ_THPT Phạm Ngũ Lão**

**CAUHOI**

**[Bài 4:]{.underline}** **Số siêu chẵn** (8 điểm) **(Đặt tên chương
trình nguồn BAI4.PAS)**

Một số được gọi là Số siêu chẵn nếu biểu diễn của nó có nhiều hơn một
chữ số đồng thời các chữ số của nó đều bằng nhau và là số chẵn

Cho một mảng số nguyên A gồm N phần tử có giá trị ≤ 10^6^ (1 ≤ N ≤
10^6^). Hãy đếm xem trong mảng có bao nhiêu số siêu chẵn.

> **Dữ liệu vào**: Đọc từ file **Bai_4.inp** gồm:

-   Dòng thứ nhất: Ghi giá trị N

-   N dòng tiếp theo, lần lượt ghi giá trị các phần tử của mảng A

> **Kết quả ra**: Ghi vào file **Bai_4.out** : Ghi số lượng những số
> siêu chẵn trong mảng

### Ví du: 

+----------------------------------+-----------------------------------+
| **Bai_3.inp**                    | **Bai_3.out**                     |
|                                  |                                   |
| **6**                            | **3**                             |
|                                  |                                   |
| 17                               |                                   |
|                                  |                                   |
| 66                               |                                   |
|                                  |                                   |
| 2222                             |                                   |
|                                  |                                   |
| 4                                |                                   |
|                                  |                                   |
| 888                              |                                   |
|                                  |                                   |
| 72                               |                                   |
+==================================+===================================+
+----------------------------------+-----------------------------------+

### 

**ĐÁP ÁN**

Program so_sieu_chan;

Uses crt;

Var f,g:text;

ng,du,dem,i,n:longint; dt:integer;

kt,ok:boolean;

a:array\[1..300\] of Integer;

BEGIN

Clrscr;

assign(f,\'bai3_tt.inp\');

assign(g,\'bai3_tt.out\');

reset(f); rewrite(g);

readln(f,n);

For i:=1 to n do

readln(f,a\[i\]);

dem:=0;

for i:=1 to n do

if a\[i\]\>21 then

begin

ok:=true;kt:=false;

dt:=-1; ng:=a\[i\];

while (kt=false) do

begin

du:=ng mod 10;

ng:=ng div 10;

if du mod 2\<\> 0 then

ok:= false;

if dt=-1 then dt:=du

else

begin

if du\<\>dt then ok:=false;

dt:=du;

end;

if ng=0 then kt:=true;

end;

if ok=true then dem:= dem+1;

end;

Writeln(\'co cac so sieu chan la:\',dem);

Writeln(g,dem);

close(f); close(g);

Readln;

END.
