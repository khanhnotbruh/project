Trần Thị Chi -- THPT Cát Bà

CÂU HỎI

  ------------------------------------------------------------------------
  **Bài**                         **File bài  **Dữ liệu      **Kết quả**
                                  làm**       vào**          
  ------------------------------- ----------- -------------- -------------
  **Bài 1 *Số lớn nhất***         BAI1.PAS    BAI1.INP       BAI1.OUT

  **Bài 2 *Chia l­ưới***           BAI2.PAS    BAI2.INP       BAI2.OUT
  ------------------------------------------------------------------------

***Bài 1(10 điểm) - Số lớn nhất***

Cho 2 số nguyên X=x~1~x~2~\...x~N~ và Y=y~1~y~2~\...y~M~ . Hãy tìm số
lớn nhất Z = z~1~z~2~\...z~k~ (Z nhận được từ X và Y bằng cách xoá đi
một số chữ số).

Ví dụ : X= 12345

Y= 435012

Thì Z= 45 (nhận được từ X bằng cách xoá đi x~1~ , x~2~ , x~3~ ; nhận
được từ Y bằng cách xoá đi y~2~, y~4~ , y~5~ , y~6~)

**Input** : BAI1.INP

\- Dòng thứ nhất là X.

\- Dòng thứ hai là Y.

**Ouput** : BAI1.OUT

\- Dòng đầu ghi số Z.

Giới hạn : M,N \< 201.

+------------------------------------+---------------------------------+
| **BAI1.INP**                       | **BA1.OUT**                     |
+====================================+=================================+
| 12345                              | 123                             |
|                                    |                                 |
| 4351023                            |                                 |
+------------------------------------+---------------------------------+

**ĐÁP ÁN VÀ HƯỚNG DẪN CHẤM**

**Phần chương trình nguồn**

BÀI 1

{\$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q-,R+,S+,T-,V+,X+}

{\$M 16384,0,655360}

const max =250;

fi =\'BAI1.INP\';

fo =\'BAI1.OUT\';

var l :array\[1..max+1,1..max+1\]of byte;

a,b,c :string;

procedure docf;

var f :text;

begin

assign(f,fi);

reset(f);

readln(f,a);readln(f,b);

close(f);

end;

function maxso(x,y,z:byte):byte;

begin

if x\<y then x:=y;

if x\<z then maxso:=z else maxso:=x;

end;

procedure lam;

var i,j,k,x,y,m :integer;

ch :char;

begin

fillchar(l,sizeof(l),0);

for i:=length(a) downto 1 do

for j:=length(b) downto 1 do

l\[i,j\]:=maxso(l\[i+1,j\],l\[i,j+1\],l\[i+1,j+1\]+ord(a\[i\]=b\[j\]));

m:=0;c:=\'0\';

for ch:=\'9\'downto \'1\' do

begin

i:=pos(ch,a);j:=pos(ch,b);

if (i\>0)and(j\>0)and(l\[i,j\]\>m) then begin c:=ch;m:=l\[i,j\];end;

end;

i:=pos(c,a)+1;j:=pos(c,b)+1;

for k:=m-1 downto 1 do

for ch:=\'9\'downto \'0\' do

begin

x:=i;y:=j;

while (x\<=length(a))and(a\[x\]\<\>ch) do inc(x);

while (y\<=length(b))and(b\[y\]\<\>ch) do inc(y);

if l\[x,y\]=k then

begin

c:=c+ch;i:=x+1;j:=y+1;

break;

end;

end;

end;

procedure ghif;

var f :text;

begin

assign(f,fo);

rewrite(f);

write(f,c);

close(f);

end;

BEGIN

docf;

lam;

ghif;

END.

**Test chấm**

**Bài 1: 5 Test, mỗi test đúng cho 2 điểm**

**HD: Kết quả có thể có nhiều hơn một phương án do đó yêu cầu giám khảo
xem xét kỹ khi chấm bài.**

===================================
