Phạm Hữu Huy -- THPT Toàn Thắng

CAUHOI

**Dãy con có tổng lớn nhất**

Cho dãy gồm n số nguyên a1, a2, \..., an. Tìm dãy con gồm một hoặc một
số phần tử liên tiếp của dãy đã cho với tổng các phần tử trong dãy là
lớn nhất. Dữ liệu: Vào từ file văn bản BAI4.INP

\- Dòng đầu tiền chứa số nguyên dương n (N\<10^6^)

\- Dòng thứ i trong số n dòng tiếp theo chứa số ai (\|ai\| ≤ 10^9^).

**Kết quả:** Ghi ra file văn bản BAI4.OUT

\- Dòng đầu tiên ghi vị trí của phần tử đầu tiên của dãy con tìm được.

\- Dòng thứ hai ghi vị trí của phần tử cuối cùng của dãy con tìm được

\- Dòng thứ ba ghi tổng các phần tử của dãy con tìm được.

**Ví dụ:**

+-------------------------------------+--------------------------------+
| **BAI4.INP**                        | **BAI4.OUT**                   |
+=====================================+================================+
| 8                                   | 3                              |
|                                     |                                |
| 12                                  | 6                              |
|                                     |                                |
| -14                                 | 40                             |
|                                     |                                |
| 1                                   |                                |
|                                     |                                |
| 23                                  |                                |
|                                     |                                |
| -6                                  |                                |
|                                     |                                |
| 22                                  |                                |
|                                     |                                |
| -34                                 |                                |
|                                     |                                |
| 13                                  |                                |
+-------------------------------------+--------------------------------+

DAPAN

program bai4;

uses crt;

var

tong,max, dau,cuoi,d,tg:int64;

st:ansistring;

i,n:longword;

f1,f2:text;

begin

assign(f1,\'bai4.inp\'); assign(f2,\'bai4.out\');

reset(f1); rewrite(f2);

tong:=0;

readln(f1,n);

dau:=1; cuoi:=1;d:=1;

tong:=0; max:=-9000000000000000000;

for i:=1 to n do

begin

readln(f1,tg);

tong:=tong+tg;

if tong \> max then

begin

max:=tong;

dau:=d;

cuoi:=i;

end;

if tong\<0 then

begin

tong:=0;

d:=i+1;

end;

end;

writeln(f2,dau);

writeln(f2,cuoi);

writeln(f2,max);

close(f1); close(f2);

end.
