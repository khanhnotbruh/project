**Bùi Thị Thu Hằng -- THPT Cát Hải**

**CAU HOI**

Cho số nguyên dương S và dãy số gồm N số nguyên dương F~1~, F~2~, \...,
F~N~. Dãy số đã cho được gọi là dãy tăng dần nếu:
F~i~![](media/image1.wmf) F~i+1~![](media/image2.wmf)i
![](media/image3.wmf) ( hay
F~1~![](media/image1.wmf)F~2~![](media/image4.wmf)
F~3~![](media/image4.wmf) \... ![](media/image4.wmf) F~N~ ).

Chúng ta gọi hai số hạng F~i1~ và F~i2~ trong dãy đã cho (với
i1![](media/image5.wmf) i2; i1,i2 ![](media/image6.wmf) ):

\- Là một "*cặp đôi xung khắc*" nếu F~i1~ + F~i2~ = S.

\- Là một "*cặp đôi lý tưởng*" nếu chúng cùng có ba chữ số, các chữ số
của số hạng này giống hệt của số hạng kia nhưng khác về thứ tự xuất
hiện - ví dụ 123 và 132 hay 121 và 211 là các cặp đôi lý tưởng còn 121
và 122 hay 457 và 457 thì không phải.

**Yêu cầu:**

1.  Cho biết S và dãy số F~1~, F~2~, \..., F~N~. Hãy xác định xem dãy đã
    cho có phải dãy tăng dần hay không?

2.  Tính số cặp đôi xung khắc và tìm một cặp đôi lý tưởng (nếu có) trong
    dãy đã cho.

**Dữ liệu vào:** Dữ liệu vào của bài toán được cho trong tệp tin
DAYSO.TXT với cấu trúc như sau:

\- Dòng đầu tiên gồm hai số N và S (N![](media/image4.wmf)50000, S
\<1000).

\- Dòng thứ i trong N dòng tiếp theo chứa một số là số F~i~ của dãy
(F~i~\< 500).

**Dữ liệu ra:** Kết quả ghi ra trên màn hình (hoặc ghi ra file
DAYSO_OUT.TXT) bốn dòng:

\- Dòng đầu ghi ba số N, S và F~N~.

\- Dòng thứ hai ghi CO nếu dãy đã cho là dãy tăng dần, ghi KHONG nếu
ngược lại.

\- Dòng thứ ba ghi một số là số cặp đôi xung khắc trong dãy đã cho.

\- Dòng thứ tư ghi hai số là một cặp đôi lý tưởng tìm được trong dãy đã
cho, nếu không có cặp đôi lý tưởng nào thì ghi hai số 0.

+-------------------------------+--------------------------------------+
| Ví dụ:DAYSO.TXT               | Kết quả trên màn hình (hoặc file     |
|                               | DAYSO_OUT.TXT)                       |
+===============================+======================================+
| 5 5                           | 5 5 5                                |
|                               |                                      |
| 1                             | CO                                   |
|                               |                                      |
| 2                             | 2                                    |
|                               |                                      |
| 3                             | 0 0                                  |
|                               |                                      |
| 4                             |                                      |
|                               |                                      |
| 5                             |                                      |
+-------------------------------+--------------------------------------+
| 10 111                        | 10 111 101                           |
|                               |                                      |
| 110                           | KHONG                                |
|                               |                                      |
| 110                           | 7                                    |
|                               |                                      |
| 1                             | 110 101                              |
|                               |                                      |
| 1                             |                                      |
|                               |                                      |
| 5                             |                                      |
|                               |                                      |
| 5                             |                                      |
|                               |                                      |
| 10                            |                                      |
|                               |                                      |
| 10                            |                                      |
|                               |                                      |
| 10                            |                                      |
|                               |                                      |
| 101                           |                                      |
+-------------------------------+--------------------------------------+

**DAP AN**

+------+------------------------+-------------------------+-----------+
| *    | DAYSO.TXT              | Kết quả trên màn hình   | **Điểm**  |
| *BÀI |                        | (hoặc file              |           |
| 4**  |                        | DAYSO_OUT.TXT)          |           |
+======+========================+=========================+===========+
| Test | 5 5                    | 5 5 5                   | 2         |
| 1    |                        |                         |           |
|      | 1                      | CO                      |           |
|      |                        |                         |           |
|      | 2                      | 2                       |           |
|      |                        |                         |           |
|      | 3                      | 0 0                     |           |
|      |                        |                         |           |
|      | 4                      |                         |           |
|      |                        |                         |           |
|      | 5                      |                         |           |
+------+------------------------+-------------------------+-----------+
| Test | 10 111                 | 10 111 101              | 2         |
| 2    |                        |                         |           |
|      | 110                    | KHONG                   |           |
|      |                        |                         |           |
|      | 110                    | 7                       |           |
|      |                        |                         |           |
|      | 1                      | 110 101                 |           |
|      |                        |                         |           |
|      | 1                      |                         |           |
|      |                        |                         |           |
|      | 5                      |                         |           |
|      |                        |                         |           |
|      | 5                      |                         |           |
|      |                        |                         |           |
|      | 10                     |                         |           |
|      |                        |                         |           |
|      | 10                     |                         |           |
|      |                        |                         |           |
|      | 10                     |                         |           |
|      |                        |                         |           |
|      | 101                    |                         |           |
+------+------------------------+-------------------------+-----------+
| Test | 9 15                   | 9 15 3                  | 2         |
| 3    |                        |                         |           |
|      | 606                    | KHONG                   |           |
|      |                        |                         |           |
|      | 10                     | 4                       |           |
|      |                        |                         |           |
|      | 12                     | 606 660                 |           |
|      |                        |                         |           |
|      | 660                    |                         |           |
|      |                        |                         |           |
|      | 5                      |                         |           |
|      |                        |                         |           |
|      | 4                      |                         |           |
|      |                        |                         |           |
|      | 11                     |                         |           |
|      |                        |                         |           |
|      | 5                      |                         |           |
|      |                        |                         |           |
|      | 3                      |                         |           |
+------+------------------------+-------------------------+-----------+
| Test | 10 18                  | 10 18 6                 | 2         |
| 4    |                        |                         |           |
|      | 4                      | KHONG                   |           |
|      |                        |                         |           |
|      | 6                      | 4                       |           |
|      |                        |                         |           |
|      | 8                      | 102 201                 |           |
|      |                        |                         |           |
|      | 4                      |                         |           |
|      |                        |                         |           |
|      | 102                    |                         |           |
|      |                        |                         |           |
|      | 8                      |                         |           |
|      |                        |                         |           |
|      | 10                     |                         |           |
|      |                        |                         |           |
|      | 12                     |                         |           |
|      |                        |                         |           |
|      | 201                    |                         |           |
|      |                        |                         |           |
|      | 6                      |                         |           |
+------+------------------------+-------------------------+-----------+
| **TỔ |                        |                         | 8         |
| NG** |                        |                         |           |
+------+------------------------+-------------------------+-----------+

**\
**

**BAI4.pas**

const fi = \'DAYSO.TXT\';

max = 500;

var a:array\[1..500\] of word;

so:array\[1..4,0..9,0..9\] of boolean;

f:text; tangdan:boolean;

n,s,fn,socu:word; Tongxk:longint;

{\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*}

procedure nhap;

var i,k:word;

begin

fillchar(a,sizeof(a),0);

assign(f,fi);

reset(f);

socu:=0; tangdan:=true;

readln(f,n,s);

for i:= 1 to n do

begin

readln(f,k);

inc(a\[k\]);

if k\<socu then tangdan:=false;

socu:=k;

if k\>100 then

so\[k div 100,(k div 10)mod 10,k mod 10\]:=true;

end;

fn:=k;

close(f);

end;

{\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*}

procedure demxungkhac;

var i:word;

begin

tongxk:=0;

for i:= 1 to ((s-1)div 2) do

tongxk:=tongxk+a\[i\]\*a\[s-i\];

if not odd(s) then

begin

i:=s div 2;

tongxk:=tongxk+(a\[i\]\*(a\[i\]-1) div 2);

end;

end;

{\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*}

procedure timlytuong;

var i,j,k:byte;

begin

for i:=1 to 4 do

for j:=0 to 9 do

for k:=0 to 0 do

if so\[i,j,k\] then

begin

if (j\<\>k)and so\[i,k,j\] then

begin write(i,j,k,\' \',i,k,j); exit; end;

if (k\<\>0)and(i\<\>k)and so\[k,j,i\] then

begin write(i,j,k,\' \',k,j,i); exit; end;

if (j\<\>0)and(i\<\>j)and so\[j,i,k\] then

begin write(i,j,k,\' \',j,i,k); exit; end;

if (k\<\>0)and((i\<\>j)or(i\<\>k)or(k\<\>j))and so\[k,i,j\] then

begin write(i,j,k,\' \',k,i,j); exit; end;

if (j\<\>0)and((i\<\>j)or(i\<\>k)or(k\<\>j))and so\[j,k,i\] then

begin write(i,j,k,\' \',k,j,i); exit; end;

end;

writeln(0,\' \',0);

end;

{\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*}

procedure inkq;

begin

writeln(n,\' \',s,\' \',fn);

if tangdan then writeln(\'CO\')

else writeln(\'KHONG\');

demxungkhac;

writeln(tongxk);

timlytuong;

end;

{\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*}

begin

nhap;

inkq;

readln;

end.
