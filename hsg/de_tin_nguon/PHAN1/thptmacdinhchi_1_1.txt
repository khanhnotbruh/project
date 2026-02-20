Nguyễn Thị Nhung - THPT Mạc Đĩnh Chi

**CAUHOI**

**Chuỗi đối xứng** **(6 điểm)**

Mỗi chuỗi kí tự được gọi là đối xứng nếu có ít nhất một kí tự và nếu ta
đọc từ phải sang trái hay từ trái sang phải đều giống nhau. Ví dụ 'Z',
'TOT' là các chuỗi đối xứng còn 'NAM' không phải.

Yêu cầu: Viết chương trình nhận vào chuỗi kí tự S và hãy cho biết chuỗi
S có là chuỗi đối xứng hay không?

Dữ liệu: Vào từ file văn bản BAI1.INP:

Dòng 1 ghi số nguyên dương n.

N dòng tiếp theo ghi các xâu Si toàn là chữ hoa.

Ghi giá trị chuỗi S (1\<S\<=255).

**Kết quả**: Ghi ra file văn bản BAI1.OUT: Ghi 'CO' nếu S là chuỗi đối
xứng; ghi 'KHONG' trong trường hợp ngược lại.

**Ví dụ:**

+---------------------------------------+------------------------------+
| **BAI1.INP**                          | **BAI1.OUT**                 |
+=======================================+==============================+
| 1                                     | CO                           |
|                                       |                              |
| COC COC                               |                              |
+---------------------------------------+------------------------------+

**TRALOI**

**Var** f1,f2:text; s:string;

dx:boolean; i,j,n:longint;

**Begin**

assign(f1,\'chuoidx.inp\'); reset(f1);

assign(f2,\'chuoidx.out\'); rewrite(f2); readln(f1,n);

for i:=1 to n do

Begin

readln(f1,s);

if length(s)=1 then dx:=true else

begin

dx:=true;

for j:=1 to length(s) div 2 do

if s\[i\]\<\>s\[length(s)+1-i\] then

begin

dx:=false; break;

end;

end;

if dx then writeln(f2,\'co\') else writeln(f2,\'khong\');

End;

close(f2);

**End.**
