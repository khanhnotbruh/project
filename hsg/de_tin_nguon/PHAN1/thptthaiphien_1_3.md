**LÊ ĐÌNH LONG -- THPT THÁI PHIÊN**

**CÂU HỎI**

**BÀI 1: Tính điểm**

Trong kỳ thi vấn đáp học sinh phải trả lời các câu hỏi của thầy giáo.
Nếu trả lời đúng thầy giáo đánh dấu bằng kí tự 'D' (Đúng), nếu sai thì
đánh dấu 'S' (Sai). Khi học sinh trả lời đúng, thầy giáo sẽ đưa ra câu
hỏi tiếp theo khó hơn câu trước, còn khi trả sai thầy sẽ cho câu hỏi mới
dễ hơn. Sau khi thi xong, kết quả của mỗi học sinh là một xâu các ký tự
'D' và 'S'. Điểm số của học sinh sẽ được tính như sau: Với các câu trả
lời sai học sinh không được điểm, với mỗi câu trả lời đúng học sinh nhận
được điểm bằng điểm của câu trả lời đúng, đứng ngay trước nó cộng 0,5.
Câu trả lời đúng đầu tiên sau câu trả lời sai có điểm bằng 1. Ví dụ, nếu
kết quả là: "DDSSDSSDDD', thì điểm số sẽ là: 1+1,5+0+0+1+0+0+1+1,5+2 =
8,0

**Yêu cầu**: Cho xâu có độ dài không quá 1000, hãy tính điểm của học
sinh.

***Dữ liệu vào***: Cho tệp BAI1.INP chứa một xâu kết quả

***Dữ liệu ra***: Đưa ra tệp BAI1.OUT điểm số của kết quả thi lấy 1 phần
thập phân.

**Ví dụ**:

  -----------------------------------------------------------------------
  **BAI1.INP**                         **BAI1.OUT**
  ------------------------------------ ----------------------------------
  DDSSDSSDDD                           8,0

  -----------------------------------------------------------------------

**ĐÁP ÁN**

program BAI_1;

var f:text;

a:array\[1..1000\] of boolean;

x:char;

t,diem:real;

i,n:integer;

procedure inp;

begin

assign(f,\'diem.inp\'); reset(f);

while not eof(f) do

begin

n:=n+1;

read(f,x);

if x=\'D\' then a\[n\]:=true else a\[n\]:=false;

end;

end;

procedure outp;

begin

assign(f,\'diem.out\'); rewrite(f);

write(f,diem:1);

close(f);

end;

procedure xuli;

begin

t:=0.5;

i:=0;

diem:=0;

repeat

i:=i+1;

while (a\[i\]) and (i\<=n) do

begin

t:=t+0.5;

diem:=diem+t;

i:=i+1;

end;

t:=0.5;

until i\>n;

end;

begin

inp;

xuli;

outp;

end.
