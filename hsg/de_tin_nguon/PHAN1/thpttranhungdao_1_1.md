**Vũ Ngọc Hà -- THPT Trần Hưng Đạo**

**CAUHOI**

**Bài 1**: **Xâu ký tự**

Cho hai xâu ký tự $S1$ và $S2$ gồm các ký tự chữ cái tiếng Anh (in
thường, in hoa) và ký tự dấu cách. Hai xâu ký được gọi là tương đương
nếu:

-   Độ dài hai xâu ký tự bằng nhau

-   Số lượng từng loại ký tự xuất hiện trong mỗi xâu (không phân biệt ký
    tự in thường và in hoa) là bằng nhau.

**Dữ liệu**: vào từ file văn bản **BAI1.INP:**

-   Dòng thứ nhất chứa xâu ký tự S1. Độ dài xâu ký tự S1 không quá
    $1000$ ký tự.

-   Dòng thứ hai chứa xâu ký tự S2. Độ dài xâu ký tự S2 không quá $1000$
    ký tự.

**Kết quả**: ghi ra tệp văn bản **BAI1.OUT:**

-   Ghi "CO" nếu hai xâu ký tự là tương đương, ngược lại hai xâu không
    tương đương thì ghi "KHONG"

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **BAI1.INP**                      | **BAI1.OUT**                      |
+===================================+===================================+
| Hai phong                         | CO                                |
|                                   |                                   |
| Phong hai                         |                                   |
+-----------------------------------+-----------------------------------+

**Ràng buộc:** 60% số điểm tương ứng với 60% số test có độ dài xâu không
quá 100 ký tự

**DAP AN**

const

fi=\'BAI1.INP\';

fo=\'BAI1.OUT\';

var

s1,s2:ansistring;

f1,f2:text;

function dodai(s1,s2:ansistring):boolean;

begin

if length(s1)=length(s2) then exit(true)

else exit(false);

end;

function kitu(s1,s2:ansistring):boolean;

var

i:longint;

a:array\[\'A\'..\'Z\'\] of longint;

b:array\[\'A\'..\'Z\'\] of longint;

ok:boolean;

ch:char;

begin

fillchar(a,sizeof(a),0);

fillchar(b,sizeof(b),0);

for i:=1 to length(s1) do

begin

s1\[i\]:=upcase(s1\[i\]);

s2\[i\]:=upcase(s2\[i\]);

end;

for i:=1 to length(s1) do

begin

if s1\[i\] in \[\'A\'..\'Z\'\] then inc(a\[s1\[i\]\]);

if s2\[i\] in \[\'A\'..\'Z\'\] then inc(b\[s2\[i\]\]);

end;

ok:=true;

for ch:=\'A\' to \'Z\' do

if a\[ch\]\<\>b\[ch\] then exit(false)

else ok:=true;

kitu:=ok;

end;

begin

assign(f1,fi);

reset(f1);

assign(f2,fo);

rewrite(f2);

readln(f1,s1);

readln(f1,s2);

if dodai(s1,s2) and kitu(s1,s2) then writeln(f2,\'CO\')

else writeln(f2,\'KHONG\');

close(f1);

close(f2);

end.
