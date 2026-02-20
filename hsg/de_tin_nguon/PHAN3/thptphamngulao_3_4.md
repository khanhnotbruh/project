**Bùi Thị Huệ_THPT Phạm Ngũ Lão**

**CAUHOI**

**[Bài 3:]{.underline}** **Dãy con ngắn nhất** (8 điểm) **(Đặt tên
chương trình nguồn BAI_3.PAS)**

Cho dãy số a gồm N số nguyên dương a~1~,a~2~,\...., a~N~ (10 ≤ N \<
20000), a~i~ ≤ 100 000000 với mọi i =1..N và một số nguyên dương K (K \<
100 000 000)

**Yêu cầu**: Hãy tìm độ dài nhỏ nhất của dãy con chứa các phần tử liên
tiếp của dãy mà có tổng các phần tử chia hết cho k

> **Dữ liệu vào**: Đọc từ file **Bai_3.inp** gồm hai dòng:

-   Dòng 1: Chứa số N, K

> \- Dòng 2: Ghi N số nguyên a~1~,a~2~,\...\....., a~N~ (1 ≤ a~i~ ≤
> 10^9^ ). Các phần tử trên cùng một dòng ghi cách nhau một dấu cách
>
> **Kết quả ra**: Ghi vào file **Bai_3.out** giá trị độ dài của dãy con
> tìm được, nếu không tìm được thì ghi giá trị 0

### Ví du: 

+--------------------------+------------------+------------------------+
| Bai_3.INP                | Bai_3.OUT        | Giải thích             |
+==========================+==================+========================+
| 10 20                    | 2                | Dãy con nhỏ nhất có độ |
|                          |                  | dài là 2               |
| 15 4 8 25 15 75 3 8 69 9 |                  |                        |
+--------------------------+------------------+------------------------+

> **Chú ý:** - 60% số điểm ứng với các test có N ≤ 50, K ≤ 10000, 1 ≤
> a~i~ ≤ 10000

\- 40% số điểm ứng với các test có N ≤ 20000, K ≤ 10^9^,1 ≤ a~i~ ≤ 10^9^

**ĐÁP ÁN**

Program Do_dai_day_con_ngan_nhat;

Uses crt;

Var f,g:text;

dx,dau,dem,i,n:Longint;

kt:boolean; t,k:longint;

a:array\[1..20000\] of integer;

BEGIN

Clrscr;

assign(f,\'bai3_DCNN.inp\');

assign(g,\'bai3_DCNN.out\');

reset(f); rewrite(g);

readln(f,n,k);

kt:=false;

dem:=0;

For i:=1 to n do

Read(f,a\[i\]);

For dx:=1 to n do

if kt=false then

for dau:=1 to n-dx+1 do

if kt=false then

begin

t:=1;

for i:=dau to dx+dau-1 do

t:=t\*a\[i\];

if t mod k=0 then

begin

dem:=dx;

kt:=true;

end;

end;

write(\'Day da cho la: \');

For i:= 1 to n do

write(a\[i\],\' \'); writeln;

write(\'Do dai nho nhat cua day con tren co tong chia het cho \',k,\'
la: \',dem);

write(g,dem);

close(f); close(g);

Readln;

END.
