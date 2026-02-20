Vũ Thị Hồng Thư - THPT Thụy Hương

CAUHOI

**Bài 1. (6 điểm): Số hoàn thiện (Số hoàn hảo)**

Bé Bình rất thích tìm hiểu về các số đặc biệt, hôm trước trong giờ học
lập trình, thầy giáo dạy cho bé về số hoàn hảo (số hoàn hảo là số có
tổng các ước (không kể nó) bằng chính nó, ví dụ 6 là số hoàn hảo vì 6 =
1+2+3). Hãy lập trình giúp bé Bình tìm ra các số hoàn hảo trong đoạn a,
b cho trước.

**\* *Dữ liệu:*** Vào từ file văn bản **BAI1.INP** gồm một dòng duy nhất
chứa 2 số nguyên dương a, b (1≤a≤b≤10^4^)

***\* Kết quả:*** Ghi ra file văn bản **BAI1.OUT** các số hoàn hảo tìm
được. Mỗi số viết trên một dòng

***Ví dụ:***

+-------------+-------------+------------------------------------------+
| *           | *           | **Giải thích**                           |
| *BAI1.INP** | *BAI1.OUT** |                                          |
+=============+=============+==========================================+
| 1 100       | 6           | 6 = 1+2+3                                |
|             |             |                                          |
|             | 28          | 28= 1 + 2 + 4 + 7 + 14                   |
+-------------+-------------+------------------------------------------+

DAPAN

Chương trình nguồn

var t:text;

i,a,b:word;

function sohh (n:word):boolean;

var tu,i:word;

begin

sohh := false;

tu:=0;

for i:=1 to n div 2 do

if n mod i = 0 then tu:= tu + i;

if tu = n then sohh:= true;

end;

begin

assign(t,\'Bai1.inp\');

reset(t);

read(t,a,b);

close(t);

assign(t,\'Bai1.out\');

rewrite(t);

for i := a to b do

if sohh(i) then writeln(t,i);

close(t);

end.
