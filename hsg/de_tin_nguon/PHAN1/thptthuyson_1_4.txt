Phạm Văn Giang -- THPT Thủy Sơn

CAUHOI

Nam là một cậu bé rất hiếu động, bé mới thuộc bảng chữ cái và rất thích
nhấn các phím chữ cái trên bàn phím. Bố bé là 1 kĩ sư, ông làm ra 1 máy
tính mà bàn phím chỉ gồm 2 nút bấm, nút bên trái là kí tự T, bên phải là
kí tự P. Mỗi lần nhấn thì 1 kí tự tương ứng xuất hiện trên màn hình. Để
rèn luyện kĩ năng sử dụng bàn phím cho con, ông yêu cầu Nam tay trái bầm
phím T, tay phải bấm phím P. Kết quả là một dãy kí tự T, P trên màn
hình. Em hãy viết chương trình kiếm tra xem Nam đã đổi tay bấm bao nhiêu
lần?

**Dữ liệu:** Vào từ file văn bản **BAI1.INP** gồm 1 dòng duy nhất là xâu
kí tự S. Độ dài xâu S không vượt quá 10000 kí tự.

**Kết quả:** Ghi vào file **BAI1.OUT** một số nguyên duy nhất là số lần
đổi tay của bé Nam.

**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI1.INP**                      **BAI1.OUT**
  --------------------------------- -------------------------------------
  TPTTTP                            3

  -----------------------------------------------------------------------

**Ràng buộc:** 60% số điểm ứng với các test có độ dài xâu không quá 100
kí tự.

DAPAN

Var

i, d, j:integer;

f1, f2:text;

S:Ansistring;

Begin

Assign(f1,'BAI1.INP');reset(f1);

Assign(f2,'BAI1.OUT');rewrite(f2);

Readln(f1,S);

d:=0;

while (pos('TP',S)\<\>0) or (pos('PT',S)\<\>0) do

begin

d:=d+1;

i:=pos('TP',S);

j:=pos('PT',S);

if (i\<\>0) and (j\<\>0) then

if i\< j then delete(s,1,i)

else delete(s,1,j);

if i=0 then delete(s,1,j);

if j=0 then delete(s,1,i);

end;

Write(f2,d);

Close(f1); Close(f2);

End.
