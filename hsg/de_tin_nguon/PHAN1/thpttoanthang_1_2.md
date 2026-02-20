Phạm Hữu Huy -- THPT Toàn Thắng

CAUHOI

**XÂU KHẢ ĐỐI XỨNG**

Xâu khả đối xứng là xâu có khả năng tạo thành xâu đối xứng sau khi hoán
đổi các kí tự trong xâu. Viết chương trình kiểm tra xem xâu có khả đối
xứng không.

**Dữ liệu vào:** Tệp BAI1.INP gồm N dòng chỉ gồm kí tự là chữ cái thường

**Kết quả:** Ghi ra tệp văn bản BAI1.OUT gồm nhiều dòng, mỗi dòng khi
kết quả "CO" hoặc "KHONG" tương ứng với dòng trong tệp BAI1.INP.

**Ví dụ:**

+-------------------------------------+--------------------------------+
| **BAI1.INP**                        | **BAI1.OUT**                   |
+=====================================+================================+
| abcabcd                             | CO                             |
|                                     |                                |
| aaabbb                              | KHONG                          |
+-------------------------------------+--------------------------------+

**Ràng buộc:**

-   *Có 60% test ứng 60% số điểm của bài với N ≤ 10;*

-   *Có 20% test ứng 20% số điểm của bài với N ≤ 10^3^;*

-   *Có 20% test khác ứng với 20% số điểm còn lại của bài với N \<
    10^4^.*

DAPAN

program bai1;

uses crt;

type mat=array\[\'a\'..\'z\'\]of int64;

var st:string;

i,dem:longword;

f1,f2:text;

function KDX(s:ansistring):boolean;

var a:mat;

ch:ansichar;

begin

dem:=0;

for ch :=\'a\' to \'z\' do a\[ch\]:=0;

for i:=1 to length(s)do

a\[s\[i\]\]:=a\[s\[i\]\]+1;

for ch :=\'a\' to \'z\' do

if a\[ch\] mod 2 =1 then dem:=dem+1;

if dem \<2 then kdx:=true else kdx:=false;

end;

begin

assign(f1,\'bai1.inp\'); assign(f2,\'bai1.out\');

reset(f1); rewrite(f2);

while not eof(f1) do

begin

readln(f1,st);

if kdx(st) then writeln(f2,\'CO\') else writeln(f2,\'KHONG\');

END;

close(f1); close(f2);

end.
