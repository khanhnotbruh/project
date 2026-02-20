Phạm mạnh Hùng -- thpt lê quý đôn

Bài 3: 8 điểm

Trong một nhà máy có trang bị loại Robot công nghiệp để thực hiện việc
tự động hoá gia công các sản phẩm. Việc gia công các sản phẩm của Robot
được thực hiện đồng thời trên hai sản phẩm cùng một lúc theo tiến trình:
Với mỗi loại thao tác gia công được Robot thực hiện trên sản phẩm thứ
nhất xong rồi chuyển sang thực hiện trên sản phẩm thứ hai. Để hoàn thành
một sản phẩm, Robot có thể thực hiện tới N loại thao tác gia công (N≤
24) và mỗi loại thao tác gia công đã thực hiện trên một sản phẩm nào đó
rồi thì không thực hiện lại trên sản phẩm đó nữa. Robot hoạt động bằng
lệnh là một dãy ký tự in hoa, mỗi ký tự là lệnh thực hiện cho một loại
thao tác gia công. Lệnh thực hiện các loại thao tác gia công khác nhau
là các ký tự khác nhau. Việc đọc dòng lệnh và thực hiện lệnh của Robot
được tiến hành theo các chu trình như sau:

\+ Chu trình thứ nhất: Đọc ký tự thứ nhất, thực hiện lệnh tương ứng trên
sản phẩm thứ nhất. Tiếp theo đọc ký tự thứ N, thực hiện lệnh tương ứng
trên sản phẩm thứ hai.

\+ Chu trình thứ hai: Đọc ký tự thứ hai, thực hiện lệnh tương ứng trên
sản phẩm thứ nhất. Tiếp theo đọc ký tự thứ N-1, thực hiện lệnh tương ứng
trên sản phẩm thứ hai.

\+ Chu trình thứ ba: Đọc ký tự ba, thực hiện lệnh tương ứng trên sản
phẩm thứ nhất. Tiếp theo đọc ký tự thứ N-2, thực hiện lệnh tương ứng
trên sản phẩm thứ hai.

\...

Tương tự với các chu trình còn lại để đọc hết dòng lệnh.

Với một xâu S các ký tự in hoa có số lượng các ký tự là chẵn và không
quá N x 2, hãy xác định xem nó có phải là một dòng lệnh của Robot đã nói
ở trên hay không?

Dữ liệu vào: Tệp văn bản ROBOT.INP có cấu trúc:

\- Dòng đầu tiên ghi 1 số là độ dài xâu S.

> \- Dòng thứ 2 ghi xâu S.

Dữ liệu ra: Tệp văn bản ROBOT.OUT ghi thông báo 'CO' nếu xâu S là dòng
lệnh của Robot, ngược lại ghi thông báo 'KHONG'

Ví dụ:

  -----------------------------------------------------------------------
  ROBOT.INP                           ROBOT.OUT
  ----------------------------------- -----------------------------------
  6                                   CO

  CBAABC                              

  ROBOT.INP                           ROBOT.OUT

  6                                   KHONG

  ACBDCA                              
  -----------------------------------------------------------------------

program bai3;

uses crt;

var

f1,f2: text;

n: integer;

s: string;

i,dem: integer;

BEGIN

clrscr;

assign(f1,\'ROBOT.INP\');

reset(f1);

assign(f2,\'ROBOT.OUT\');

rewrite(f2);

readln(f1,n);

read(f1,s);

if (n mod 2 \<\> 0)

or (length(s) mod 2 \<\> 0)

or (length(s) \> n\*2)

then write(f2,\'KHONG\')

else

begin

dem:=0;

for i:=1 to n div 2 do

if s\[i\] = s\[n+1-i\]

then inc(dem);

if dem = n div 2

then write(f2,\'CO\')

else write(f2,\'KHONG\');

end;

close(f1); close(f2);

readln

END.
