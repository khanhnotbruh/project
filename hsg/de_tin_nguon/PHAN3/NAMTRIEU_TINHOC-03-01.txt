ĐỖ THỊ TIẾN_THPT NAM TRIỆU

**CAUHOI**

Nhập vào một xâu s có độ dài không quá 100 kí tự. In ra số lượng các từ
có trong xâu và cho biết xâu đó có bao nhiêu từ là đối xứng? (Chương
trình có kiểm tra dữ liệu nhập vào)

Dữ liệu vào : Nhâp một xâu không quá 100 kí tự

Dữa liệu ra :

Dòng 1 : Số tự nhiên là số từ trong xâu

Dòng 2 : Số tự nhiên là số từ đối xứng trong xâu

(Nếu nhập sai thì hiển thị : Xau nhap vao dai hon 100 ki tu! Yeu cau
nhap lai )

Ví dụ :

+------------------------------------+---------------------------------+
| **Bai1.inp**                       | **Bai1.out**                    |
+====================================+=================================+
| que huong la chum khe ngot, cho    | Xau nhap vao dai hon 100 ki tu! |
| con treo hai moi ngay, que huong   | Yeu cau nhap lai!               |
| la duong di hoc, con ve rop buom   |                                 |
| vang bay                           |                                 |
+------------------------------------+---------------------------------+
| kem coc                            | 2                               |
|                                    |                                 |
|                                    | 1                               |
+------------------------------------+---------------------------------+

**DAPAN**

program bai1;

var st,s,s1:string;

j,i,dem,dx:integer;

tu:array\[1..100\] of string;

fi,fo:text;

begin

assign(fi,\'bai1.inp\');

reset(fi);

assign(fo,\'bai1.out\');

rewrite(fo);

Readln(fi,st);

if length(st)\>100 then writeln(fo,\'Xau nhap vao dai hon 100 ki tu! Yeu
cau nhap lai!\')

else

begin

while st\[1\]=#32 do delete(st,1,1);

while st\[length(st)\]=#32 do delete(st,length(st),1);

while pos(#32#32,st)\<\>0 do delete(st,pos(#32#32,st),1);

dem:=0;st:=st+\' \';

for i:=1 to length(st) do

if st\[i\]\<\>\' \' then s:=s+st\[i\]

else

begin

dem:=dem+1;

tu\[dem\]:=s;

s:=\'\';

end;

for i:=1 to dem do

begin

s:=tu\[i\];

for j:= length(s) downto 1 do

s1:=s1+s\[j\];

if s1=s then dx:=dx+1;

s1:=\'\';

end;

writeln(fo,dem);

write(fo,dx);

end;

close(fi);

close(fo);

end.

+-----------+-----------------------------------+----------------------+
| **LẦN     | **Bai1.inp**                      | **Bai1.out**         |
| TEST**    |                                   |                      |
+===========+===================================+======================+
| 1         | que huong la chum khe ngot, cho   | Xau nhap vao dai hon |
|           | con treo hai moi ngay, que huong  | 100 ki tu! Yeu cau   |
|           | la duong di hoc, con ve rop buom  | nhap lai!            |
|           | vang bay                          |                      |
+-----------+-----------------------------------+----------------------+
| 2         | chuc mung nam moi                 | 4                    |
|           |                                   |                      |
|           |                                   | 0                    |
+-----------+-----------------------------------+----------------------+
| 3         | day tot hoc tot                   | 4                    |
|           |                                   |                      |
|           |                                   | 2                    |
+-----------+-----------------------------------+----------------------+
| 4         | coc coc coc                       | 3                    |
|           |                                   |                      |
|           |                                   | 3                    |
+-----------+-----------------------------------+----------------------+
