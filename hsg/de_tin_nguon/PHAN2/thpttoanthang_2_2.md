Phạm Hữu Huy -- THPT Toàn Thắng

CAUHOI

**Tổng chữ số (5 điểm)**

Cho một số tự nhiên *N* (*N*\<*10^64^*).

**Yêu cầu:** Hãy viết chương trình tính tổng các chữ số của số tự nhiên
đã cho.

*Ví dụ: N=1234. Tổng các chữ số của nó là 10.*

**Dữ liệu vào:** Từ tệp văn bản BAI2.INP gồm một số *N*.

**Kết quả:** Ghi ra tệp văn bản BAI2.OUT gồm một số duy nhất tìm được.

**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI2.INP**                           **BAI2.OUT**
  -------------------------------------- --------------------------------
  1234                                   10

  -----------------------------------------------------------------------

**Ràng buộc:**

-   *Có 60% test ứng 60% số điểm của bài với N ≤ 10^6^;*

-   *Có 20% test ứng 20% số điểm của bài với N ≤ 10^18^;*

-   *Có 20% test khác ứng với 20% số điểm còn lại của bài với N \<
    10^64^.*

DAPAN

program bai2;

uses crt;

var

tong:qword;

st:ansistring;

i:longint;

f1,f2:text;

begin

assign(f1,\'bai2.inp\'); assign(f2,\'bai2.out\');

reset(f1); rewrite(f2);

tong:=0;

readln(f1,st);

for i:=1to length(st) do

tong:=tong+ord(st\[i\])-48;

writeln(f2,tong);

close(f1); close(f2);

end.
