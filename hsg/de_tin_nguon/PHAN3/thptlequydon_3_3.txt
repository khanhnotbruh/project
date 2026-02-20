VŨ NAM TUYÊN -- THPT LÊ QUÝ ĐÔN

***[Câu 3(8d):]{.underline}***

Để tiện trong công tác quản lý, một công ty đã gắn mã số cho các nhân
viên của mình. Mã số của mỗi nhân viên bao gồm bảy chữ số( gọi là phần
đầu của mã nhân viên) và một chữ cái in hoa nối phía sau. Chữ cái này
được tính toán từ bảy chữ số phần đầu của mã theo các bước như sau:

I. Chữ số thứ I được gắn một số nguyên dương a, được gọi là trọng lượng
của nó thứ tự các chữ số trong phần đầu của mã tính từ trái qua phải).
Người ta lấy lần lượt các chữ số trong mã nhân với trọng lượng tương ứng
của nó.

2\. Cộng tất cả các kết quả.

3\. Tìm số dư của phép chia tổng trên cho số nguyên dương K ( 1K\<1\])

4\. Mỗi số dư tương ứng với một chữ cái in hoa. Chữ cái in hoa tương ứng
tìm được là chữ cái nối phía sau của mã nhân viên.

Cho trước phần đầu của mã nhân viên, hãy tìm chữ cái in hoa nối phía
sau. Dữ liệu vào: Từ file văn bản CAU3.INP có cấu trúc như sau:

• Dòng đầu tiên ghi số nguyên dương K.

• Dòng thứ 2 ghi một xấu gồm 7 chữ số là phần đầu của mã nhân viên

Dòng thứ 3 ghi 7 số nguyên dương, số thứ I là trọng lượng của chữ số thứ
I trong phần đầu của mã. Các số cách nhau một ký tự trắng.

Dòng cuối cùng ghi một xấu có độ dài K gồm các chữ cái tiếng Anh in hoa,
chữ cái thứ I tương ứng với số I-1 là số dư của phép chia của tổng tìm
được cho K.

Kết quả: Ghi ra file văn bản CAU3.OUT, chứa chữ cái tìm được.

Ví dụ:

+---------------------------------+------------------------------------+
| CAU3.INP                        | CAU3.OUT                           |
+=================================+====================================+
| 11                              | D                                  |
|                                 |                                    |
| 6830907                         |                                    |
|                                 |                                    |
| 2 7 6 5 4 3 2                   |                                    |
|                                 |                                    |
| JABCDEFGHIZ                     |                                    |
+---------------------------------+------------------------------------+

ĐÁP ÁN

program cau3;

uses crt;

var

f1,f2: text;

k: integer;

chuso,chucai: string;

i,j: integer;

x: string;

so: integer;

a: array\[1..2,1..250\] of integer;

code: integer;

s,du: integer;

BEGIN

clrscr;

assign(f1,\'C:\\TUYENLQD\\CAU3.INP\');

reset(f1);

assign(f2, \'C:\\TUYENLQD\\CAU3.OUT');

rewrite(f2);

readln(f1,k);

x:=\'0123456789\';

readln(f1,chuso);

for i:=1 to length(chuso) do

begin

for j:=1 to length(x) do

if chuso\[i\] = x\[j\]

then a\[1,i\]:=j-1;

end;

for i:=1 to length(chuso) do

read(f1,a\[2,i\]);

readln(f1);

s:=0;

for i:=1 to length(chuso) do

s:=s+a\[1,i\]\*a\[2,i\];

du:=s mod k;

read(f1,chucai);

write(f2,chucai\[du+1\]);

close(f1); close(f2);

END.
