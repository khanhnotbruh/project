Phạm Hồng Vân -- THPT An Hải

CAUHOI

**Mã nhân viên (6 điểm) *Tên chương trình: MANV.PAS***

Để chuẩn bị cho màn đồng diễn tại buổi lễ khai mạc đại hội TDTT thành
phố Hải Phòng năm 2015, Ban tổ chức thực hiện quản lý các diễn viên
trong đội đồng diễn bằng cách gán cho mỗi diễn viên một mã số. Mã số là
một số nguyên dương (hai diễn viên khác nhau có mã số khác nhau). Do đó
trong quá trình tập luyện ban tổ chức phải loại một số diễn viên không
đáp ứng được yêu cầu, khi loại một diễn viên thì mã số của diễn viên đó
bị loại khỏi danh sách. Khi tiếp nhận thêm diễn viên mới, ban tổ cần
biết mã số nhỏ nhất chưa có trong danh sách để gán cho diễn viên mới.

**Yêu cầu:** Cho số N là số diễn viên và có N mã số của các diễn viên
trong đội đồng diễn. Hãy tìm mã số nhỏ nhất chưa xuất hiện trong N mã số
của các diễn viên.

**Dữ liệu vào:** Vào từ tập tin văn bản **MANV.INP**:

\- Dòng đầu là số N (1\<N\<30000).

\- N dòng tiếp theo, dòng thứ i ghi số a~i~ (1≤a~i~≤30000).

**Kết quả:** Đưa ra tập tin văn bản **MANV.OUT**:

\- Một số duy nhất tìm được.

**Ví dụ:**

+------------------------------------+---------------------------------+
| **MANV.INP**                       | **MANV.OUT**                    |
+====================================+=================================+
| 6                                  | 2                               |
|                                    |                                 |
| 7                                  |                                 |
|                                    |                                 |
| 5                                  |                                 |
|                                    |                                 |
| 6                                  |                                 |
|                                    |                                 |
| 1                                  |                                 |
|                                    |                                 |
| 3                                  |                                 |
|                                    |                                 |
| 4                                  |                                 |
+------------------------------------+---------------------------------+

DAPAN

CONST tepinp=\'MANV.INP\';

tepout=\'MANV.OUT\';

VAR fi,fo:text;

n,i:integer;

a:array\[1..30000\]of integer;

Procedure Tim;

Var kq,i,max,min:integer;

kt:boolean;

Begin

max:=a\[1\];min:=a\[1\];

For i:=2 to n do

Begin

If a\[i\]\>max then max:=a\[i\];

If a\[i\]\<min then min:=a\[i\];

End;

If min\>=2 then kq:=1

Else If max=n then kq:=n+1

Else

Begin

kq:=1;kt:=false;

While kt=false do

Begin

Inc(kq);i:=1;a\[n+1\]:=kq;

While a\[i\]\<\>kq do inc(i);

If i\>n then kt:=true;

End;

End;

Writeln(fo,kq);

End;

BEGIN

Assign(fi,tepinp);reset(fi);

Assign(fo,tepout);rewrite(fo);

Readln(fi,n);

For i:=1 to n do Readln(fi,a\[i\]);

Tim;

Close(fi);Close(fo);

End.
