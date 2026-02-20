**Đỗ Trọng Trung -- THPT Tiên Lãng**

**CAUHOI**

**Bài 1. Chuỗi đối xứng**

Mỗi chuỗi kí tự được gọi là đối xứng nếu có không ít nhất một kí tự và
nếu ta đọc từ phải sang trái hay từ trái sang phải đều giống nhau. Ví dụ
'Z', 'TOT' là các chuỗi đối xứng còn 'NAM' không phải.

Yêu cầu: Viết chương trình nhận vào chuỗi kí tự S và hãy cho biết chuỗi
S có là chuỗi đối xứng hay không?

*Dữ liệu vào* từ file văn bản BAI1.INP: Ghi giá trị chuỗi S (S\<=255).

*Kết quả*: Ghi ra file văn bản BAI1.OUT: Ghi 'CO' nếu S là chuỗi đối
xứng; ghi 'KHONG' trong trường hợp ngược lại.

**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI1.INP**                            **BAI1.OUT**
  --------------------------------------- -------------------------------
  COC COC                                 CO

  -----------------------------------------------------------------------

**DAPAN**

+------------------------------------------------+---------------------+
| > *Ghi chú:* Bài được chấm qua 2 test, mỗi     |                     |
| > test đúng được 3 điểm:                       |                     |
+================================================+=====================+
| > 1 test có độ dài của mỗi xâu ký tự không     | > 3 điểm            |
| > vượt quá 255                                 |                     |
+------------------------------------------------+---------------------+
| > 1 test có độ dài của mỗi xâu ký tự không     | > 3 điểm            |
| > vượt quá 1000                                |                     |
+------------------------------------------------+---------------------+

Chương trình gợi ý

**Program chuoidoixung;**

const

f1=\'bai1.inp\';

f2=\'bai1.out\';

var

s,st:string;

i:byte;

k:boolean;

f:text;

procedure Nhap;

begin

assign(f,f1);

reset(f);

read(f,s);

close(f);

end;

procedure Xuli;

begin

for i:=length(s) downto 1 do

st:=st+s\[i\];

if st=s then k:=true

else k:=false;

end;

procedure Xuat;

begin

assign(f,f2);

rewrite(f);

if k=true then write(f,\'CO\')

else write(f,\'KHONG\');

close(f);

end;

BEGIN

Nhap;

Xuli;

Xuat;

END.
