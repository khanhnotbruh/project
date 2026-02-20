Vũ Văn Lưu -- THPT Toàn Thắng

CAUHOI

**Bài 2. Xâu chung (6 điểm)**

Xâu S được gọi là xâu con chung của xâu S1 và xâu S2 nếu xâu S là một
dãy các ký tự liên tiếp trong S1 và cũng là dãy các ký tự liên tiếp
trong S2.

**Yêu cầu:** Cho hai xâu kí tự S1 và S2 (có không quá 10^4^ ký tự). Hãy
tìm một xâu con chung S dài nhất của hai xâu S1 và S2. Ví dụ: S1 = 'Ky
thi học sinh gioi Tinh môn Tin hoc', S2 = 'hoc sinh gioi mon Tin hoc'
thì S = 'hoc sinh gioi \'.

**Dữ liệu vào:** từ file văn bản **BAI2.INP:**

-   Dòng đầu tiên ghi xâu S1;

-   Dòng thứ hai ghi xâu S2.

**Dữ liệu ra: file văn bản BAI2.OUT**: Chỉ một số duy nhất là độ dài của
xâu con chung dài nhất S. (Nếu hai xâu S1, S2 không có kí tự nào chung
thì ghi số 0).

**Ví dụ:**

+--------------------------------------------------+-------------------+
| **BAI2.INP**                                     | **BAI2.INP**      |
+==================================================+===================+
| Ky thi hoc sinh gioi Tinh mon tin hoc            | 14                |
|                                                  |                   |
| hoc sinh gioi mon Tin hoc                        |                   |
+--------------------------------------------------+-------------------+

**Ràng buộc dữ liệu:**

*- 60% số test tương ứng với 60% số điểm có số kí tự ≤255)*

*- 40% số test tương ứng với 40% số điểm có (255\<n≤10^4^)*

DAPAN

Lời giải tham khảo:

var f1,f2:text;

i,j,l,lmax:longint;

ok:boolean;

s,st,ans:ansistring;

begin

assign(f1,\'bai2.inp\');reset(f1);

assign(f2,\'bai2.out\');rewrite(f2);

readln(f1,s);

readln(f1,st);

for i:=1 to length(s) do

begin

if pos(s\[i\],st)\<\>0 then

begin

ans:=ans+s\[i\];

for j:=i+1 to length(s) do

if pos(ans+s\[j\],st)\<\> 0 then

begin

ans:=ans+s\[j\];

l:=length(ans);

if l\>lmax then lmax:=l;

end

else break;

end;

ans:=\'\';

end;

write(f2,lmax);

close(f1);close(f2);

end.
