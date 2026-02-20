**LÊ ĐÌNH LONG -- THPT THÁI PHIÊN**

**CÂU HỎI**

**BÀI 1: TÌM KÝ TỰ CHUNG**

Cho hai xâu $s1$ và $s2$, mỗi xâu gồm các kí tự chữ cái tiếng Anh (có độ
dài không quá 255 ký tự). Viết chương trình tìm những chữ cái có mặt
trong cả hai xâu (không phân biệt chữ in thường, chữ in hoa).

Dữ liệu: Vào từ file văn bản BAI1.INP

\- Dòng đầu chứa xâu $s1$, dòng thứ hai chứa xâu $s2$.

Kết quả : Ghi ra file văn bản BAI1.OUT các ký tự chung của hai xâu dưới
dạng chữ hoa theo thứ tự bảng chữ cái tiếng anh.

Ví dụ:

+--------------------------------------+-------------------------------+
| BAI1.INP                             | BAI1.OUT                      |
+======================================+===============================+
| abdabc                               | ACD                           |
|                                      |                               |
| omocnghAdi                           |                               |
+--------------------------------------+-------------------------------+

Đáp án

const fi=\'bai1.inp\';

fo=\'bai1.out\';

var f:array\[\'A\'..\'Z\'\] of longint;

s1,s2:string;

i:longint;

c:char;

begin

assign(input,fi); reset(input);

assign(output,fo); rewrite(output);

readln(s1);

readln(s2);

fillchar(f,sizeof(f),0);

for i:=1 to length(s1) do

if (f\[upcase(s1\[i\])\]=0) then inc(f\[upcase(s1\[i\])\]);

for i:=1 to length(s2) do

if (f\[upcase(s2\[i\])\]=1) then inc(f\[upcase(s2\[i\])\]);

for c:=\'A\' to \'Z\' do

if (f\[c\]=2) then write(c);

close(input); close(output);

end.
