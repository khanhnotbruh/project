Nguyễn Ngọc Ký -- THPT Hùng Thắng CAUHOI

**Bài 1: Đếm loại kí tự (*6 điểm*)**

Một công ty sản xuất bàn phím máy tính cần biết tần suất của mỗi chữ cái
tiếng Anh xuất hiện trong các văn bản, để từ đó làm căn cứ sắp xếp vị
trí các phím cho phù hợp với người dùng trong một mẫu bàn phím mới.

***Yêu cầu:*** Viết chương trình thống kê số lần xuất hiện của mỗi chữ
cái tiếng Anh (không phân biệt chữ hoa hay chữ thường) được sắp xếp theo
thứ tự xuất hiện giảm dần, nếu các kí tự có cùng số lần xuất hiện thì ưu
tiên theo thứ tự từ điển.

***Dữ liệu vào:*** Đọc từ tệp văn bản BAI1.INP có 1 dòng duy nhất chứa
các chữ cái Tiếng Anh in hoa và in thường.

***Dữ liệu ra:*** Ghi kết quả vào tệp văn bản BAI1.OUT, mỗi dòng ghi kí
tự (in hoa) và số lần xuất hiện (phân biệt bởi dấu cách) sắp xếp theo
thứ tự trong bảng chữ cái.

***Ví dụ:***

+----------------------------------------+-----------------------------+
| BAI1.INP                               | BAI1.OUT                    |
+========================================+=============================+
| HAIPHONG                               | H 2                         |
|                                        |                             |
|                                        | A 1                         |
|                                        |                             |
|                                        | I 1                         |
|                                        |                             |
|                                        | P 1                         |
|                                        |                             |
|                                        | O 1                         |
|                                        |                             |
|                                        | N 1                         |
|                                        |                             |
|                                        | G 1                         |
+----------------------------------------+-----------------------------+

Các ràng buộc:

60% số điểm với xâu có độ dài ≤ 255 kí tự

40% còn lại với xâu có độ dài ≤ 10000 kí tự

DAPAN

program bai1;

var f1,f2:text;

s:ansistring;

j:char;

i: longint;

a:array\[\'A\'..\'Z\'\] of longint;

begin

assign(f1,\'bai1.inp\');reset(f1);

assign(f2,\'bai1.out\');rewrite(f2);

readln(f1,s);

close(f1);

fillchar(a,sizeof(a),0);

s:=upcase(s);

for i:= 1 to length(s) do inc(a\[s\[i\]\]);

for j:=\'A\' to \'Z\' do if a\[j\]\<\> 0 then writeln(f2,j,\'
\',a\[j\]);

close(f2);

end.
