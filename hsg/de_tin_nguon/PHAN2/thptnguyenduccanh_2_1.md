PHẠM THỊ NHÂT - THPT NGUYỄN ĐỨC CẢNH

CAUHOI

Cho một chuỗi St không quá 1000 kí tự.

**Yêu cầu** : Viết chương trình nhập vào chuỗi bất kì St sau đó in ra
màn hình 2 kết quả: chuỗi con gồm các ký tự trong chuỗi St và tổng các
giá trị của các ký tự là số trong chuỗi St.

**Dữ liệu** : Vào từ file văn bản BAI1.INP gồm có:

> \- Dòng thứ 1 chứa xâu St.

**Kết quả** : Ghi ra tệp văn bản BAI1.OUT :

> \- Dòng thứ 1 chứa các kí tự chữ cái của xâu St.
>
> \- Dòng thứ 2 chứa số nguyên là tổng của các kí tự là chữ số của xâu
> St.

**Ví dụ :**

+-----------------------+---------------------+-----------------------+
| **BAI1.INP**          | **BAI1.OUT**        | **GIẢI THÍCH**        |
+=======================+=====================+=======================+
| A312BC24DE            | ABCDE               | Dòng 1 gồm các kí tự  |
|                       |                     | chữ cái của xâu St,   |
|                       | 12                  | dòng 2 là tổng        |
|                       |                     |                       |
|                       |                     | 3+1+2+2+4=12          |
+-----------------------+---------------------+-----------------------+

DAPAN

**program bai1;**

var f1, f2 : text;

s, s1 : string;

i, tong, t, code : integer;

BEGIN

assign(f1,\'DE2_01.inp\');

assign(f2,\'DE2_01.out\');

reset(f1);

rewrite(f2);

read(f1,s);

S1:=\'\';

tong:=0;

for i := 1 to length(s) do

if ( upcase(s\[i\]) \>= \'A\' ) and ( upcase (s\[i\]) \<= \'Z\' ) then
s1:=s1+ s\[i\]

else

begin

val(s\[i\],t,code) ;

tong := tong + t;

end;

writeln(f2,s1);

writeln(f2, tong);

close(f1);

close(f2);

END.
