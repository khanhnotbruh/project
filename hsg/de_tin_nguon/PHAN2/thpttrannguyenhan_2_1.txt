Hoàng Văn Quyến -- THPT Trần Nguyên Hãn

CAUHOI

**Bài 2. Tỉa mảng (6** **điểm) Tên chương trình nguồn BAI2.PAS**

Cho dãy số nguyên A gồm N phần tử và dãy số nguyên B gồm M phần tử. (với
M≤N). Các phần tử của dãy A và B có kiểu Integer.

*Yêu cầu:* Có thể xóa (gạch) khỏi dãy A một số phần tử sao cho các phần
tử còn lại (giữ nguyên trật tự ban đầu) chính là dãy B.

**Dữ liệu vào:** Cho trong tệp BAI2.INP:

> \- Dòng thứ nhất: Ghi giá trị của hai số N, M tương ứng số lượng các
> phần tử trong dãy A và dãy B (1 ≤ N, M ≤ 150)
>
> \- Dòng thứ 2: Ghi giá trị các phần tử của dãy A.
>
> \- Dòng thứ 3: Ghi giá trị các phần tử của dãy B.

Các phần tử trên các dòng 2 và dòng 3 được ghi cách nhau duy nhất bởi
dấu một dấu cách trống.

**Kết quả ra:** Ghi ra tệp BAI2.OUT: Có 2 trường hợp.

> \- Trường hợp 1 (thực hiện được): Dòng đầu ghi \'CO\'; Dòng thứ hai
> ghi vị trí các phần tử bị xóa trong dãy A. Các vị trí này được ghi
> cách nhau duy nhất bởi dấu cách trống.
>
> \- Trường hợp 2 (không thực hiện được): Ghi \'KHONG\'

**Ví dụ**

+---------------------------------+------------------------------------+
| BAI2.INP                        | BAI2.OUT                           |
+---------------------------------+------------------------------------+
| 6 4                             | CO                                 |
|                                 |                                    |
| 6 **15** 8 75 **8** 9           | 2 5                                |
|                                 |                                    |
| 6 8 75 9                        |                                    |
+---------------------------------+------------------------------------+
| 6 4                             | KHONG                              |
|                                 |                                    |
| 15 6 7 8 9 30                   |                                    |
|                                 |                                    |
| 6 8 9 7                         |                                    |
+---------------------------------+------------------------------------+

ĐÁP ÁN

**Bài 2. Tỉa mảng**

Sinh test tùy ý giám khảo, chấm 3 test

  ------------------------------------------------------------------------
  Test số   Điểm       Đặc điểm test
  --------- ---------- ---------------------------------------------------
  1         2,0        Input theo đầu bài

  2         2,0        N\>50

  3         2,0        N\>100
  ------------------------------------------------------------------------

**Bài 2. Tỉa mảng (Chương trình gợi ý)**

Program TiaMang;

Const tepinp=\'OT\\Bai2.inp\';

tepout=\'OT\\Bai2.out\';

Type tep=text;

mang=array\[1..150\] of integer;

Var Fi, Fo:tep;

M,N,i:integer;

vt,a,b:mang;

Procedure MoTep;

Begin

assign(fi,tepinp);

assign(fo,tepout);

reset(fi);

rewrite(fo);

Readln(fi,n,m);

for i:=1 to n do read(fi,a\[i\]); readln(fi);

for i:=1 to m do read(fi,b\[i\]);

End;

Procedure Xuly;

var kt:boolean;

i,d,p:integer;

Begin

p:=1;

(\*fillchar(a,sizeof(a),0);

fillchar(b,sizeof(b),0);

fillchar(vt,sizeof(vt),0); \*)

kt:=False;

p:=1;

for i:=1 to n do

if a\[i\]=b\[p\] then

Begin

vt\[i\]:=i;

p:=p+1;

End

else vt\[i\]:=-1;

d:=0;

for i:=1 to n do if vt\[i\]\>0 then

Begin

d:=d+1;

End;

if d=m then kt:=true;

if kt then

Begin

Writeln(fo,\'CO\');

for i:=1 to n do if vt\[i\]=-1 then write(fo, i,\' \');

End Else Write(fo,\'KHONG\');

End;

Procedure Dongtep;

Begin

close(fi);

Close(fo);

End;

Begin

MoTep;

XuLy;

dongtep;

End.
