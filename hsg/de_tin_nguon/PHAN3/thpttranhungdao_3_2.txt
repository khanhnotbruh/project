Phạm Thị Phượng -- THPT Trần Hưng Đạo

CAUHOI

**Bài 1.** **Xâu con aba 6 điểm**

Cho 2 xâu kí tự S1 và S2. Viết chương trình tính số lần lặp lại của xâu
S1 trong xâu S2.

**Dữ liệu**: Vào từ tệp văn bản XAU.INP gồm:

\- Dòng đầu tiên chứa xâu S1.

\- Dòng thứ hai chứa xâu S2.

**Kết quả**: Ghi ra tệp văn bản XAU.OUT:

\- Chỉ một dòng duy nhất ghi số lần lặp lại của xâu S1 trong xâu S2.

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **XAU.INP**                       | **XAU.OUT**                       |
+-----------------------------------+-----------------------------------+
| aba                               | 4                                 |
|                                   |                                   |
| bababababa                        |                                   |
+-----------------------------------+-----------------------------------+

DAPAN

+------------------------------------------------+---------------------+
| > *Ghi chú:* Bài được chấm qua 2 test, mỗi     |                     |
| > test đúng được 3 điểm:                       |                     |
+================================================+=====================+
| > 1 test có độ dài của mỗi xâu ký tự không     | > 3 điểm            |
| > vượt quá 255                                 |                     |
+------------------------------------------------+---------------------+
| > 1 test có độ dài của mỗi xâu ký tự không     | > 3 điểm            |
| > vượt quá 1000                                |                     |
+------------------------------------------------+---------------------+

Chương trình gợi ý

**program xauconaba;**

const

f1=\'xau.inp\';

f2=\'xau.out\';

var

s1,s2,st:string;

i,n:byte;

f:text;

procedure nhap;

begin

assign(f,f1);

reset(f);

readln(f,s1);

readln(f,s2);

close(f);

end;

procedure xuat;

begin

assign(f,f2);

rewrite(f);

write(f,n);

close(f);

end;

procedure xuli;

begin

writeln(length(s2));

for i:= 1 to length(s2)-length(s1)+1 do

begin

st:=s2\[i\]+s2\[i+1\]+s2\[i+2\];

if s1=st then

inc(n);

end;

end;

begin

nhap;

xuli;

xuat;

end.
