Hoàng Văn Quyến -- THPT Trần Nguyên Hãn

CAUHOI

**BAI1.PAS (Số chung lớn nhất) (6 điểm)**

Cho 2 xâu:

X = x~1~x~2~..xM. (Với xi là các kí tự số từ '0' đến '9')

Y = y~1~y~2~..yN.( Với yi là các kí tự số từ '0' đến '9')

(M, N \<= 250)

Ta gọi: Z = z~1~z~2~..zk là xâu chung của 2 xâu X, Y nếu xâu Z nhận đ­ợc
từ xâu X bằng cách xoá đi một số kí tự và cũng nhận được từ xâu Y bằng
cách xoá đi một số kí tự.

*[Yêu cầu]{.underline}*: Tìm một xâu chung của 2 xâu X, Y sao cho xâu
nhận được tạo thành một số lớn nhất có thể được.

Dữ liệu vào file: **BAI1.INP**

Gồm 2 dòng, dòng 1 là xâu X, dòng 2 là xâu Y.

Kết quả ra file: **BAI1.OUT**

Gồm 1 dòng duy nhất là số lớn nhất có thể nhận được.

*[Ví dụ]{.underline}*:

  ----------------------------------- -----------------------------------
  **BAI1.INP**                        **BAI1.OUT**

  19012304 034012                     34
  ----------------------------------- -----------------------------------

> ĐÁP ÁN

# Bài 1: Số chung lớn nhất

Sinh test tùy ý giám khảo, chấm 3 test

  ------------------------------------------------------------------------
  Test số   Điểm       Đặc điểm test
  --------- ---------- ---------------------------------------------------
  1         2,0        Input theo đầu bài

  2         2,0        N\>50

  3         2,0        N\>100
  ------------------------------------------------------------------------

# Bài 1: Số chung lớn nhất (Chương trình gợi ý)

{\$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q+,R+,S+,T-,V+,X+}

{\$M 16384,0,655360}

uses crt;

const maxn = 251;

fi = \'string.inp\';

fo = \'string.out\';

var pa : array\[0..maxn,0..maxn\] of byte;

s1,s2,skq : string;

max : byte;

procedure docf;

var f : text;

begin

assign(f,fi);

reset(f);

readln(f,s1);

read(f,s2);

close(f);

end;

function maxso(a,b:byte) : byte;

begin

maxso := (abs(a-b)+a+b) div 2;

end;

procedure Idonotknow;

var i,j : byte;

begin

for i := length(s1) downto 1 do

for j := length(s2) downto 1 do

if s1\[i\] = s2\[j\] then pa\[i,j\] := pa\[i+1,j+1\] +1

else pa\[i,j\] := maxso(pa\[i+1,j\] , pa\[i,j+1\] );

max := pa\[1,1\];

end;

procedure wastingtime;

var ch : char;

i,j,so,is,js : byte;

begin

is := 1; js := 1;

so := 0;

repeat

for ch := \'9\' downto \'0\' do

begin

i := is; j := js;

while (s1\[i\] \<\> ch)and(i \<= length(s1)) do inc(i);

while (s2\[j\] \<\> ch)and(j \<= length(s2)) do inc(j);

if pa\[i,j\] = max - so then

begin

skq := skq + ch;

is := i+1; js := j+1;

break;

end;

end;

inc(so);

until max=so;

while (skq\[1\] = \'0\')and(skq\<\>\'0\') do delete(skq,1,1);

end;

procedure ghif;

var f : text;

begin

assign(f,fo);

rewrite(f);

if max = 0 then write(f,\' Khong co xau chung !!!\...\')

else

begin

wastingtime;

write(f,skq);

end;

close(f);

end;

BEGIN

docf;

idonotknow;

ghif;

END.
