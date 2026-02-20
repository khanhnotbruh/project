Phạm Văn Giang -- THPT Thủy Sơn

CAUHOI

Bé Bi mới thuộc bảng chữ cái nên bé rất thích đếm các chữ cái trong các
quyển vở của anh trai. Để kiểm tra, anh trai bé đưa cho em một dãy kí tự
gồm các kí tự chữ cái (in thường, in hoa) và chữ số (từ '0' đến'9') và
đố em đếm xem có bao nhiêu kí tự chữ cái khác nhau trong dãy (không phân
biệt chữ hoa và thường), do số lượng kí tự nhiều nên đây là 1 bài toán
quá khó với bé. Bạn hãy giúp bé thực hiện công việc trên.

**Dữ liệu:** Vào từ file văn bản **BAI1.INP** gồm 1 dòng duy nhất là xâu
kí tự S. Độ dài xâu S không vượt quá 5000 kí tự.

**Kết quả:** Ghi vào file **BAI1.OUT** một số nguyên duy nhất là số
lượng kí tự khác nhau trong dãy.

**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI1.INP**                      **BAI1.OUT**
  --------------------------------- -------------------------------------
  aBAcd12D                          4

  -----------------------------------------------------------------------

**Ràng buộc:** 60% số điểm ứng với các test có độ dài xâu không quá 100
kí tự.

DAPAN

Var dem:array\['A'..'Z'\] of integer;

Ch:char;

i, d:integer;

f1, f2:text;

S:Ansistring;

Begin

Assign(f1,'BAI1.INP');reset(f1);

Assign(f2,'BAI1.OUT');rewrite(f2);

Readln(f1,S);

S:=upcase(S);

For ch:='A' to 'Z' do dem\[ch\]:=0;

For i:=1 to length(S) do

If S\[i\] in \['A'..'Z'\] then dem\[S\[i\]\]:=dem\[S\[i\]\]+1;

d:=0;

For ch:='A' to 'Z' do

If dem\[ch\]\<\>0 then d:=d+1;

Write(f2,d);

Close(f1); Close(f2);

End.
