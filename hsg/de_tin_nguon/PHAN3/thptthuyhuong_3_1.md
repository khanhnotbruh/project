Vũ Thị Hồng Thư - THPT Thụy Hương

CAUHOI

**Bài 3. (8 điểm): Mã hóa xâu:**

Cho xâu S chỉ gồm các kí tự 0 và 1 (số lượng kí tự 1\<S\<255). Viết
chương trình mã hóa xâu S theo quy tắc sau: đi từ trái sang phải của xâu
S nếu ta gặp một đoạn liên tiếp gồm m kí tự 1, ta thay đoạn đó bằng xâu
am, nếu ta gặp một đoạn liên tiếp gồm n kí tự 0, ta thay đoạn đó bằng
xâu bn, cứ như thế cho tới hết xâu.

**\* Dữ liệu:** Vào từ file v¨n b¶n **BAI3.INP** gồm 1 dòng chứa xâu ký
tự S.

**\* Kết quả:** Ghi vào tệp văn bản **BAI3.OUT** xâu S sau khi mã hóa.

**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI3.INP**                        **BAI3.OUT**
  ----------------------------------- -----------------------------------
  00011110000011                      b3a4b5a2

  -----------------------------------------------------------------------

DAPAN

Chương trình nguồn

Var t: Text;

S: String;

Function Mahoaxau(S: string):String;

Var S1:String;

S2:String\[1\];

i,j,d:byte;

Begin

S1:=\'\'; S2:=\'\';

i:=1;

While (i\<= length(S)) do

Begin

d:=1;

If S\[i\]=\'0\' then S1:=S1+\'b\'

else S1:=S1+\'a\';

j:=i+1;

While (j\<= length(S)) And (S\[j\]=S\[i\]) do

begin

inc(j);

inc(d);

end;

str(d,S2);

S1:=S1+S2;

S2:=\'\';

i:=i+d;

end;

Mahoaxau:=S1;

End;

BEGIN

Assign(t,\'Bai3.INP\');

Reset(t);

Readln(t,S);

close(t);

Assign(t,\'Bai3.OUT\');

Rewrite(t);

writeln(t,Mahoaxau(s));

close(t);

END.
