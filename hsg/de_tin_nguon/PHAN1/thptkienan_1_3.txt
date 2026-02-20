Phạm Văn Thơ -- THPT Kiến An

CÂU HỎI

**Bài 1: (4.0)** **Chuỗi đối xứng**

Biểu thức ngoặc đúng là một xâu các ký tự được tạo ra bằng cách xóa tất
cả các ký tự có trong một biểu thức toán học đúng, ngoại trừ các ký tự
'(' và ')'.

+------------------------------------+---------------------------------+
| **Một số biểu thức ngoặc đúng**    | **Một số biểu thức ngoặc sai**  |
+====================================+=================================+
| ( )                                | (( )                            |
|                                    |                                 |
| ( )( )( )                          | ( ))                            |
|                                    |                                 |
| (( )( ))                           | )(                              |
|                                    |                                 |
| (((( ))))                          | ( ))(                           |
+------------------------------------+---------------------------------+

Yêu cầu:

Cho một biểu thức ngoặc. Hãy cho biết biểu thức ngoặc đó đúng hay không.

**Dữ liệu**: Vào từ tệp văn bản BTND.INP gồm 1 dòng duy nhất thể hiện
biểu thức ngoặc có chiều dài không quá 10000 ký tự, giữa các dấu ngoặc
không có dấu cách.

**Kết quả**: Ghi ra tệp văn bản BTND.OUT gồm một số nguyên duy nhất thể
hiện biểu thức ngoặc đúng hay không: là số 1 nếu biểu thức ngoặc đúng,
là số 0 nếu biểu thức ngoặc sai.

**Ví dụ:**

  -----------------------------------------------------------------------
  **BTND.INP**                        **BTND.OUT**
  ----------------------------------- -----------------------------------
  ( )                                 1

  ( ))                                0
  -----------------------------------------------------------------------

**ĐÁP ÁN**

CONST

INP=\'BTND.INP\';

OUT=\'BTND.OUT\';

VAR f:text;

a:integer;

k:boolean;

(\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*)

PROCEDURE Solve;

var str:char;

begin

assign(f,INP);

reset(f);

a:=0;

k:=true;

while not eof(f) do

begin

read(f,str);

if str=\'(\' then a:=a+1;

if str=\')\' then a:=a-1;

if a\<0 then

begin

k:=false;

exit;

end;

end;

if a\>0 then k:=false;

end;

(\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*)

PROCEDURE Xuat;

begin

assign(f,OUT);

rewrite(f);

if k=true then write(f,\'1\')

else

write(f,\'0\');

close(f);

end;

(\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*)

BEGIN

clrscr;

Solve;

Xuat;

END.
