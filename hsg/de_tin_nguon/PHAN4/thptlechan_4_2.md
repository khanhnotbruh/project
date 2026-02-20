Trần Thị Vân Oanh\_ THPT Lê Chân

CÂU HỎI: XÂU TƯƠNG ĐƯƠNG

Cho hai xâu A và B gồm các chữ cái tiếng anh, dấu cách và chữ số. Em hãy
lập trình cho biết số lượng từng loại chữ số trong A và B có tương đương
với nhau không?

### Dữ liệu vào: tệp xautd.inp gồm: {#dữ-liệu-vào-tệp-xautd.inp-gồm .unnumbered}

### Dòng đầu là xâu A

### Dòng thứ hai là xâu B

### Dữ liệu ra: tệp xautd.out ghi 'CO' nếu số lượng từng loại chữ số là tương đương bằng nhau, ghi 'KHONG' ngược lại {#dữ-liệu-ra-tệp-xautd.out-ghi-co-nếu-số-lượng-từng-loại-chữ-số-là-tương-đương-bằng-nhau-ghi-khong-ngược-lại .unnumbered}

+-----------------------------------+-----------------------------------+
| Xautd.inp                         | Xautd.out                         |
+===================================+===================================+
| Chung toi co 223456 con ga        | CO                                |
|                                   |                                   |
| Nha tung co 234 con nha Lan co    |                                   |
| 265 con                           |                                   |
+-----------------------------------+-----------------------------------+
| Ban ha co 1222 qua cam            | KHONG                             |
|                                   |                                   |
| Ban Tinh co 2356 qua cam          |                                   |
+-----------------------------------+-----------------------------------+

TRẢ LỜI

const fi=\'xautd.inp\';

fo=\'xautd.out\';

var fa,fb:array\[\'0\'..\'9\'\] of longint;

a,b: string;

i: longint;

c: char;

kt: boolean;

begin

assign(input,fi); reset(input);

assign(output,fo); rewrite(output);

readln(a);

readln(b);

fillchar(fa, sizeof(fa),0);

fillchar(fb, sizeof(fb),0);

for i:=1 to length(a) do

if (a\[i\] in \[\'0\'..\'9\'\]) then inc(fa\[a\[i\]\]);

for i:=1 to length(b) do

if (b\[i\] in \[\'0\'..\'9\'\]) then inc(fb\[b\[i\]\]);

kt:=true;

for c:=\'0\' to \'9\' do

if fa\[c\]\<\>fb\[c\] then

begin

kt:=false;

break;

end;

if kt then writeln(\'CO\') else writeln(\'KHONG\');

close(input); close(output);

end.
