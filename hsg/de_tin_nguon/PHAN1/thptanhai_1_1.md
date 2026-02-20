Phạm Hồng Vân -- THPT An Hải

CAUHOI

**Mã hóa xâu (6 điểm) *Tên chương trình: MAHOA.PAS***

**Yêu cầu:** Mã hóa văn bản với khóa K (1\<K\<26) là thay thế mỗi chữ
cái bằng ký tự đứng sau nó K vị trí trong bảng mã ASCII (nếu mã ký tự
hiện tại cộng với K lớn hơn mã ký tự cuối cùng của bảng mã thì sẽ lấy ký
tự đầu bảng mã theo nguyên tắc xếp vòng), dấu cách giữ nguyên.

**Dữ liệu vào**: Vào từ tập tin văn bản **MAHOA.INP**:

\- Dòng 1 chứa số nguyên dương K,

\- Dòng thứ i trong các dòng tiếp theo mỗi dòng là một chuỗi k‎ý tự S~i~
( S~i~ không quá 200 kí tự).

**Kết quả**: Đưa ra tập tin văn bản **MAHOA.OUT**:

\- Với mỗi dòng trong tập tin đầu vào, in chuỗi mã hóa tương ứng.

**Ví dụ:**

+-----------------------------------+----------------------------------+
| **MAHOA.INP**                     | **MAHOA.OUT**                    |
+===================================+==================================+
| 3                                 | txdq gdr                         |
|                                   |                                  |
| quan dao                          | krdqj vd                         |
|                                   |                                  |
| hoang sa                          | wuxrqj vd                        |
|                                   |                                  |
| truong sa                         | fkx txlhq ylhw qdp               |
|                                   |                                  |
| chu quyen viet nam                |                                  |
+-----------------------------------+----------------------------------+

DAPAN

CONST tepinp=\'MAHOA.INP\';

tepout=\'MAHOA.OUT\';

VAR fi,fo:text;

k:byte;

s:string;

Procedure MAHOA(a:string);

var i:byte;

begin

for i:=1 to length(a) do

if a\[i\]\<\>\' \'then a\[i\]:=chr(ord(a\[i\])+K);

writeln(fo,a);

end;

BEGIN

Assign(fi,tepinp);reset(fi);

Assign(fo,tepout);rewrite(fo);

Readln(fi,k);Writeln(fo);

While not eof(fi) do

Begin

Readln(fi,s);

MAHOA(s);

End;

Close(fi);Close(fo);

End.
