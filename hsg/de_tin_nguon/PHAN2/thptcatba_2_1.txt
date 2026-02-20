Trần Thị Chi -- THPT Cát Bà

CAUHOI

  ------------------------------------------------------------------------
  **Bài**                         **File bài  **Dữ liệu      **Kết quả**
                                  làm**       vào**          
  ------------------------------- ----------- -------------- -------------
  **Bài 1: *Đường đi dến số 0***  BAI1.PAS    BAI1.INP       BAI1.OUT

  ------------------------------------------------------------------------

***Bài 1(6,0 điểm) - Đường đi đến số 0.***

Mỗi một số nguyên dương đều có thể biểu diễn dưới dạng tích của hai số
nguyên dương X, Y sao cho X≤Y. Nếu như trong cách phân tích này ta thay
X bởi X-1 còn Y bới Y+1 thì sau khi tính tích của chúng ta thu được hoặc
là một số nguyên dương mới, hoặc là số 0.

Ví dụ: số 12 có 3 cách phân tích 1\*12, 3\*4, 2\*6. Cách phân tích thứ
nhất cho ta tích mới là 0=(1-1)\*(12+1), cách phân tích thứ hai cho ta
tích mới là 10=(3-1)\*(4+1), còn cách phân tích thứ ba cho ta
7=(2-1)\*(6+1).

Nếu như kết quả là khác không thì ta lặp lại thủ tục này đối với số thu
được. Rõ ràng là nếu áp dụng liên tiếp thủ tục trên, cuối cùng ta sẽ đến
được số 0, không phụ thuộc vào việc ta chọn cách phân tích nào tiếp tục.

Yêu cầu: Cho trước số nguyên dương N (1≤N≤10000), hãy đưa ra K số nguyên
khác nhau có thể gặp trong việc áp dụng thủ tục đã mô tả đối với N.

Dữ liệu: Vào từ file văn bản BAI1.INP chứa số nguyên dương N

Kết quả: Ghi ra file văn bản BAI1.OUT:

• Dòng đầu tiên ghi K là số lượng số thu được

• Trong các dòng tiếp theo lần lượt ghi K số thu được theo thứ tự tăng
dần bắt đầu từ 0, mỗi dòng ghi 10 số cách nhau ít nhất một dấu trắng,
trừ dòng cuối cùng có thể ít hơn 10 số.

Ví dụ:

+------------------------------------+---------------------------------+
| **BAI1.INP**                       | **BA1.OUT**                     |
+====================================+=================================+
| 12                                 | 6                               |
|                                    |                                 |
|                                    | 0                               |
|                                    |                                 |
|                                    | 3 4 6 7 10                      |
+------------------------------------+---------------------------------+

DAPAN

**I. Phần chương trình nguồn**

Bài 1:

{\$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q+,R+,S+,T-,V+,X+}

{\$M 16384,0,655360}

uses crt;

const

tfi=\'BAI1.INP\';

tfo=\'BAI1.OUT\';

maxN=10000;

var

fi,fo: text;

N: integer;

dd: array\[0..maxN\] of byte;

procedure Docdl;

begin

assign(fi,tfi); reset(fi);

readln(fi,N);

close(fi);

end;

procedure Loang(u: integer);

var x,y: integer;

begin

if u\>0 then

begin

for x:=1 to trunc(sqrt(u)) do

if u mod x=0 then

begin

y:=u div x;

if dd\[(x-1)\*(y+1)\]=0 then

begin

dd\[(x-1)\*(y+1)\]:=1;

Loang((x-1)\*(y+1));

end;

end;

end;

end;

procedure Tim;

begin

fillchar(dd,sizeof(dd),0);

Loang(N);

end;

procedure Inkq;

var dem,sol,i: integer;

begin

sol:=0;

for i:=0 to N do sol:=sol+dd\[i\];

assign(fo,tfo); rewrite(fo);

writeln(fo,sol);

dem:=0;

for i:=0 to N do

if dd\[i\]=1 then

begin

write(fo,i,\' \');

inc(dem);

if dem mod 10=0 then writeln(fo);

end;

close(fo);

end;

BEGIN

Docdl;

Tim;

Inkq;

END.

**II. Test chấm**

**Bài 1: 5 Test, mỗi test đúng cho 1,2 điểm**

\-\-\-- Hết \-\-\--
