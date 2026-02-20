PHẠM THỊ NHÂT - THPT NGUYỄN ĐỨC CẢNH

CAUHOI

Cho một xâu st không quá 255 kí tự. Nhập vào một kí tự C bất kì.

**Yêu cầu** : Viết chương trình đưa ra xâu con lớn nhất là các kí tự C
viết liền nhau.

**Dữ liệu** : Vào từ file văn bản BAI1.INP gồm có:

> \- Dòng đầu tiên chứa kí tự C.
>
> \- Dòng thứ 2 là chứa xâu st.

**Kết quả** : Ghi ra tệp văn bản BAI1.OUT :

> \- Nếu có kí tự C, đưa ra xâu con có nhiều kí tự C nhất.
>
> \- Nếu không có ghi không có

**Ví dụ :**

+------------------------+-----------------------+---------------------+
| **BAI1.INP**           | **BAI1.OUT**          | **GIẢI THÍCH**      |
+========================+=======================+=====================+
| b                      | bbb                   | Xâu con có kí tự    |
|                        |                       | \'b\' dài nhất là 3 |
| abbacabbbaaab          |                       | kí tự.              |
+------------------------+-----------------------+---------------------+
| h                      | Khong co              | Xâu đưa vào không   |
|                        |                       | có kí tự \'h\'.     |
| abbacabbbaaab          |                       |                     |
+------------------------+-----------------------+---------------------+

DAPAN

**program bai1;**

Var s:string;

C:char;

i,j,dau,cuoi:integer;

f1,f2:text;

BEGIN

assign(f1,\'DE1_01.inp\');

reset(f1);

assign(f2,\'DE1_01.out\');

rewrite(f2);

readln(f1,C);

readln(f1,s);

i:=1; dau:=0;cuoi:=0;

while i\<=length(s)do

begin

while (s\[i\] \<\>C) and (i \<=length(s)) do inc(i);

j:=i;

while (s\[i\] = C) do inc(i);

if i-j \> cuoi - dau then

begin

dau:=j;

cuoi:=i;

end;

end;

if cuoi-dau \> 0 then

for i:= dau to cuoi -1 do write (f2,s\[i\])

else writeln (f2,\'khong co xau nhu vay\');

close(f1);

close(f2);

END.
