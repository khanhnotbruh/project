**Vũ Thị Hiền -- THPT Lê Quý Đôn**

**Bài 2: Mật khẩu MK.PAS**

Cu Tèo thường xuyên tham gia thi lập trình trên mạng. Vì đạt được thành
tích cao nên Tèo được gửi tặng một phần mềm diệt virus. Nhà sản xuất
phần mềm cung cấp cho Tèo một mã số là một số nguyên dương N có không
quá 255 chữ số. Để cài đặt được phần mềm, Tèo phải nhập vào mật khẩu của
phần mềm. Mật khẩu là một số nguyên dương M được tạo ra bằng cách tính
tổng giá trị các chữ số của N.

***Yêu cầu:*** Hãy tìm số nguyên dương M.

***Dữ liệu vào:*** Cho trong file văn bản MK.INP có cấu trúc như sau:

*- Dòng 1:* Ghi số nguyên dương N.

***Dữ liệu ra:*** Ghi ra file văn bản MK.OUT theo cấu trúc như sau:

*- Dòng 1:* Ghi số nguyên dương M tìm được.

***Ví dụ:***

  ----------------------------------- -----------------------------------
  **MK.INP**                          **MK.OUT**

  84915388247                         59
  ----------------------------------- -----------------------------------

**Bài 2: 6 điểm**

Program Mat_khau;

Const fi=\'MK.INP\';

fo=\'MK.OUT\';

A:Array\[\'0\'..\'9\'\] of Byte = (0,1,2,3,4,5,6,7,8,9);

Var N:byte;

St:String;

Procedure Read_Data;

Var f:text;

Begin

Assign(f,fi);

Reset(f);

Readln(f,St);

Close(f);

End;

Function Tong:Longint;

Var f:text;

i,T:Longint;

Begin

T:=0;

For i:=1 to Length(St) do

T:=T+A\[St\[i\]\];

Tong:=T;

End;

Procedure Write_Data;

Var f:Text;

Begin

Assign(f,fo);

Rewrite(f);

Write(f,Tong);

Close(f);

End;

BEGIN

Read_Data;

Write_Data;

End.
