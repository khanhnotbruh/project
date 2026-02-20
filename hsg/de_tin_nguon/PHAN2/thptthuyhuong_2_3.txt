Vũ Thị Hồng Thư - THPT Thụy Hương

CAUHOI

**Bài 2. (6 điểm): Tìm mật thư**

An cùng một nhóm bạn tham gia trò chơi giải mật thư. Ban tổ chức phát
cho mỗi đội chơi một mật thư là một xâu ký tự chỉ gồm các chữ cái in
thường trong tiếng Anh. Các đội chơi cần giải mật thư một cách nhanh
nhất để tìm ra mật mã ẩn chứa trong đó.

Bằng suy luận, đội chơi của An đã phát hiện ra mật mã cần tìm là một xâu
con dài nhất chứa liên tiếp kí tự ′a′

**\* Yêu cầu:** Hãy lập trình giúp đội chơi của An tìm ra mật mã.

> **\* Dữ liệu vào:** Đọc từ tệp văn bản BAI2.INP gồm một xâu mật thư có
> độ dài không quá 500 kí tự.

**\* Kết quả:** Ghi vào tệp văn bản BAI2.OUT là độ dài của xâu mật mã
tìm được.

Ví dụ:

  -----------------------------------------------------------------------
  BAI2.INP                                          BAI2.OUT
  ------------------------------------ ------------ ---------------------
  aaabcaaaaade                                      5

  -----------------------------------------------------------------------

DAPAN

+----------+--------------------------------------------+--------------+
| Bài      | Hướng dẫn chấm                             | Biểu điểm    |
+==========+============================================+==============+
| BÀI 2    | Xâu có độ dài không quá 100 kí tự          | 1.0 điểm     |
|          |                                            |              |
| (6 điểm) |                                            |              |
+----------+--------------------------------------------+--------------+
|          | Xâu có độ dài không quá 255 kí tự          | 2.0 điểm     |
+----------+--------------------------------------------+--------------+
|          | Xâu có độ dài không quá 500 kí tự          | 3.0 điểm     |
+----------+--------------------------------------------+--------------+

Chương trình nguồn

Var t: text;

S: ansistring;

max,i,j: word;

BEGIN

Assign(t,\'Bai2.INP\');

Reset(t);

Read(t,S);

close(t);

Assign(t,\'Bai2.OUT\');

Rewrite(t);

max:=0;i:=1;

While (i\<= length(S)) do

If S\[i\]\<\>\'a\' then inc(i)

else

Begin

j:=i+1;

While (j\<= length(S)) And (S\[j\]=\'a\') do inc(j);

If max \< j-i then max:= j-i;

i:=i+max+1;

End;

writeln(t,max);

close(t);

END.
