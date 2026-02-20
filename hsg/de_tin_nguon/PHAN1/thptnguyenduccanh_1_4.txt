PHẠM THỊ NHÂT - THPT NGUYỄN ĐỨC CẢNH

CAUHOI

Cho N (0\< N \<1000) xâu kí tự, mỗi xâu không quá 255 kí tự gồm các chữ
số 0 và 1 thể hiện một số trong hệ nhị phân.

**Yêu cầu :** Viết chương trình tính giá trị số đó trong hệ thập phân.

**Dữ liệu** : Vào từ file văn bản BAI2.INP gồm có:

> \- Dòng đầu tiên chứa N là số lượng xâu nhập vào.
>
> \- N dòng tiếp theo là giá trị của từng xâu.

**Kết quả** : Ghi ra tệp văn bản BAI2.OUT :

\- Mỗi dòng ghi ra giá trị của từng số trong hệ thập phân.

**Ví dụ :**

+----------------------+-----------------------+----------------------+
| **BAI2.INP**         | **BAI2.OUT**          | **GIẢI THÍCH**       |
+======================+=======================+======================+
| 3                    | 5                     | Xâu 1 có giá trị là  |
|                      |                       | 5, xâu 2 có giá trị  |
| 101                  | 10                    | là 10, xâu 3 có giá  |
|                      |                       | trị là 7.            |
| 1010                 | 7                     |                      |
|                      |                       |                      |
| 111                  |                       |                      |
+----------------------+-----------------------+----------------------+

DAPAN

**Program bai2;**

const fi=\'DE1_02.inp\';

fo=\'DE1_02.out\';

var f1,f2:text;

n, i :integer;

s:string;

Function hedem(st:string): integer;

var so,k,j:integer;

begin

so:=1;

for j:=2 to length(st) do

begin

if st\[j\] =\'1\' then k:=1 else k:= 0;

so:=2 \* so+ k;

end;

hedem:=so;

end;

BEGIN

assign(f1,fi);

assign(f2,fo);

reset(f1);

rewrite(f2);

readln(f1,n);

for i:= 1 to n do

begin

readln(f1,s);

writeln(f2,hedem(s));

end;

close(f1);

close(f2);

END.
