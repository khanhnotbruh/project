Nguyễn Thị Nhung - THPT Mạc Đĩnh Chi

**CAUHOI**

**Trò chơi (6 điểm)**

Đến với kỳ thi HSG Tin học lần này, bạn Thảo tham gia thêm một trò chơi
ngoại khóa, phần thưởng dành cho người chiến thắng là một chiếc thẻ
nhớ 64GB từ Ban tổ chức.

Trò chơi như sau: Ban tổ chức đưa ra một chuỗi kí tự gồm toàn các chữ
cái latin in thường từ **'a'** tới **'z'** cùng với M câu hỏi. Mỗi câu
hỏi bao gồm hai số nguyên l và r, nhiệm vụ của người chơi là trả lời xem
chuỗi con từ vị trí l tới vị trí r của chuỗi ban đầu có đối xứng hay
không?

***Yêu cầu:*** Hãy giúp bạn Thảo trả lời các câu hỏi để giành chiến
thắng trò chơi?

**Dữ liệu vào**: từ tệp văn bản **BAI2.INP**

-   Dòng đầu tiên chứa chuỗi kí tự s chỉ gồm toàn chữ cái latin in
    thường.

-   Dòng thứ hai chứa số nguyên dương M -- số câu hỏi của Ban tổ chức.

-   M dòng tiếp theo, mỗi dòng chứa hai số nguyên dương l và r thể hiện
    một câu hỏi của Ban tổ chức.

**Dữ liệu ra:** ghi ra tệp văn bản **BAI2.OUT**

-   Ứng với mỗi câu hỏi, đưa ra kết quả trên một dòng: số 1 nếu như
    chuỗi con đó là đối xứng, ngược lại ghi số -1.

Ví dụ:

+-----------------------------------------+----------------------------+
| BAI2.INP                                | BAI2.OUT                   |
+=========================================+============================+
| Abxbagredcnmooojhggohoreomodioibba      | 1                          |
|                                         |                            |
| 5                                       | -1                         |
|                                         |                            |
| 1 5                                     | 1                          |
|                                         |                            |
| 1 23                                    | 1                          |
|                                         |                            |
| 25 27                                   | 1                          |
|                                         |                            |
| 29 31                                   |                            |
|                                         |                            |
| 13 15                                   |                            |
+-----------------------------------------+----------------------------+

-   **Ràng buộc**

    -   1≤\|s\|≤10\^5, với \|s\| là độ dài của chuỗi s.

    -   Subtask 1 (30% số điểm): \|s\|≤100.

    -   Subtask 2 (30% số điểm): \|s\|≤1000.

    -   Subtask 3 (40% số điểm): Không có ràng buộc gì thêm.

**TRALOI**

**Var** S,s1:ansistring;

m,L,R,j:longint;

f1,f2:text;

**function** doixung(st:ansistring):boolean;

var i: longint;

begin

doixung:=true;

for i:=1 to length(st) div 2 do

if st\[i\]\<\> st\[length(st)-i+1\] then

exit(false);

end;

**Begin**

assign(f1,\'BAI2.inp\'); reset(F1);

assign(f2,\'BAI2.out\'); rewrite(F2);

readln(f1,S);

readln(f1,m);

for j:=1 to m do

begin

readln(f1,l,r);

s1:=copy(s,l,r-l+1);

if doixung(s1) then writeln(f2,\'1\') else writeln(f2,\'-1\');

end;

close(F1); close(f2);

**end.**
