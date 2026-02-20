**LÊ ĐÌNH LONG -- THPT THÁI PHIÊN**

**CÂU HỎI**

**Bài 1: CẮT GIẤY**

Bé Hải Dương vừa vào lớp 1 và được tiếp xúc với môn thủ công, nhiệm vụ
của Bé là phải cắt từ tập giấy màu thành các miếng hình chữ nhật để có
thể cắt thành các khẩu hiệu, biết rằng:

-   Khẩu hiệu gồm các chữ cái tiếng anh in thường

-   Các chữ có cùng chiều rộng là 1 mm

-   Mỗi chữ cái có một chiều cao khác nhau:

**Ví dụ**: nếu chữ h có chiều cao 3 mm, chữ t có chiều cao 1 mm, chữ d
có chiều cao 2 mm và khẩu hiệu là thdth (như hình vẽ)

Thì bé Hải Dương phải chuẩn bị một miếng giấy màu hình chữ nhật có chiều
cao là 3 mm, chiều dài là 5 mm. Vậy diện tích của miếng giấy màu là
$3 \times 5 = 15\ mm^{2}$

**Yêu cầu**: Cho biết chiều cao của 26 chữ cái tiếng Anh in thường và
khẩu hiệu mà Bé Hải Dương phải cắt, bạn hãy tính giúp Bé Hải Dương xem
phải chuẩn bị miếng giấy màu có diện tích bằng bao nhiêu?

**Dữ liệ:** vào từ file văn bản **BAI1.INP**

-   Dòng 1 chứa 26 số nguyên dương, theo thứ tự là chiều cao các chữ cái
    tiếng Anh in thường từ 'a' đến 'z'. (chiều cao một ký tự bất kỳ
    $\leq 10$)

-   Dòng tiếp theo chứa xâu ký tự (độ dài xâu ký tự $\leq 20$) là khẩu
    hiệu mà Bé Hải Dương phải cắt.

**Kết quả:** ghi ra file văn bản **BAI1.OUT** một số nguyên dương duy
nhất là diện tích của miếng giấy màu mà Bé phải chuẩn bị.

**Ví dụ 1:**

+---------------------------------------------+------------------------+
| **BAI1.INP**                                | **BAI1.OUT**           |
+=============================================+========================+
| 1 3 1 3 1 4 1 3 2 5 5 5 5 5 5 5 5 5 5 5 5 5 | 9                      |
| 5 5 5 5                                     |                        |
|                                             |                        |
| abc                                         |                        |
+---------------------------------------------+------------------------+

**Giải thích:**

-   Ký tự a chiều cao $= 1$; Ký tự b chiều cao $= 3;$ Ký tự c chiều cao
    $= 1$

Vậy miếng giấy màu có chiều cao $= 3$, chiều rộng $= 3$, từ đó diện tích
$= 9$

**Ví dụ 2:**

+---------------------------------------------+------------------------+
| **BAI1.INP**                                | **BAI1.OUT**           |
+=============================================+========================+
| 1 3 1 3 1 4 1 3 2 5 5 5 5 5 5 5 5 5 5 5 5 5 | 28                     |
| 5 5 5 7                                     |                        |
|                                             |                        |
| zaba                                        |                        |
+---------------------------------------------+------------------------+

**ĐÁP ÁN**

BÀI 1:

uses math;

const

inp = \'BAI1.INP\';

out = \'BAI1.OUT\';

var a:array\[97..122\] of longint;

i,cao:longint;

s:string;

begin

assign(input,inp); reset(input);

assign(output,out); rewrite(output);

for i:=97 to 122 do read(a\[i\]); readln;

read(s);

cao:=a\[ord(s\[1\])\];

for i:=1 to length(s) do cao:=max(cao,a\[ord(s\[i\])\]);

write(cao\*length(s))

end.
