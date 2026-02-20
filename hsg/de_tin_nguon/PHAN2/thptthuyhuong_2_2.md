Vũ Thị Hồng Thư - THPT Thụy Hương

CAUHOI

**Bài 2. (6 điểm): Tính điểm:**

Trong kỳ thi vấn đáp, học sinh phải trả lời các câu hỏi của thầy giáo.
Nếu trả lời đúng thì thầy giáo đánh dấu bằng ký tự \'D\', nếu trả lời
sai thì đánh dấu bằng ký tự \'S\'. Mỗi câu trả lời đúng học sinh được
tính 0.5 điểm, trả lời sai sẽ không được tính điểm. Sau khi thi xong,
kết quả của mỗi học sinh là một xâu gồm các ký tự \'D\' và \'S\'.

**Yêu cầu:**. Bạn hãy viết chương trình tính điểm thi cho một học sinh
bất kỳ?

**Dữ liệu:** Vào từ file văn bản **BAI2.INP** chứa xâu kết quả là câu
trả lời đúng hoặc sai của một học sinh có độ dài không quá 1000 ký tự.

**Kết quả:** Ghi ra tÖp văn bản **BAI2.OUT** là điểm số của kết quả thi
vấn đáp.

**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI2.INP**                            **BAI2.OUT**
  --------------------------------------- -------------------------------
  DDDDDSDDDDDDSSDDDDDD                    8.5

  -----------------------------------------------------------------------

DAPAN

+-----------+------------------------------------------+---------------+
| Điểm      | Hướng dẫn chấm                           | Biểu điểm     |
+===========+==========================================+===============+
| Bài 2     | Xâu có đồ dài không quá 100 kí tự        | 1.0 điểm      |
|           |                                          |               |
| (6 điểm)  |                                          |               |
+-----------+------------------------------------------+---------------+
|           | Xâu có đồ dài không quá 255 kí tự        | 1.0 điểm      |
+-----------+------------------------------------------+---------------+
|           | Xâu có đồ dài không quá 500 kí tự        | 2.0 điểm      |
+-----------+------------------------------------------+---------------+
|           | Xâu có đồ dài không quá 1000 kí tự       | 2.0 điểm      |
+-----------+------------------------------------------+---------------+

Chương trình nguồn:

var t:text;

i:word;diem:real;

s:ansistring;

BEGIN

assign(T,\'Bai2.inp\');

reset(T);

read(T,s);

close(T);

assign(T,\'Bai2.out\');

rewrite(T);

diem:=0;

for i:=1 to length(s) do

if upcase(s\[i\])=\'D\' then diem:=diem + 0.5;

write(T,diem:5:1);

close(T);

END.
