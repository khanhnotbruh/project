Nguyễn Thị Nhung - THPT Mạc Đĩnh Chi

**CAUHOI**

**Xâu song song (6 điểm)**

Mỗi xâu kí tự S được gọi là song song độ dài 2n (n\>=1) nếu S\[i\] =
S\[n+i\] với mọi i=1..n.

Ví dụ: Xâu aabaab là xâu song song

Xâu abba không phải là xâu song song.

Yêu cầu: Viết chương trình nhận vào xâu kí tự S và hãy cho biết xâu S có
là xâu song song hay không?

Dữ liệu: Vào từ file văn bản BAI1.INP:

Dòng 1 ghi số nguyên dương n.

N dòng tiếp theo ghi các xâu Si toàn là chữ hoa (độ dài không quá 255)

**Kết quả**: Ghi ra file văn bản BAI1.OUT: Ghi 'CO' nếu S là xâu song
song; ghi 'KHONG' trong trường hợp ngược lại.

**Ví dụ:**

+---------------------------------------+------------------------------+
| **BAI1.INP**                          | **BAI1.OUT**                 |
+=======================================+==============================+
| 2                                     | CO                           |
|                                       |                              |
| COCCOC                                | KHONG                        |
|                                       |                              |
| ABBA                                  |                              |
+---------------------------------------+------------------------------+

**TRALOI**

Var f1,f2:text; s:string;

kt:boolean; i,j,n:longint;

Begin

assign(f1,\'bai1.inp\'); reset(f1);

assign(f2,\'bai1.out\'); rewrite(f2); readln(f1,n);

for i:=1 to n do

Begin

readln(f1,s);

if length(s) mod 2 =1 then kt:=false else

begin

kt:=true;

for j:=1 to length(s) div 2 do

if S\[i\]\<\>S\[length(s) div 2 + i\] then

begin

kt:=false; break;

end;

end;

if kt then writeln(f2,\'co\') else writeln(f2,\'khong\');

End;

close(f2);

End.
