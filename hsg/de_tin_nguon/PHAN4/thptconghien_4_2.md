Nguyễn Thị Duyên -- THPT Cộng Hiền

**CÂU HỎI**

**Bài 4. (10 điểm) Ghép số lớn**

Vaxia đã viết được một số lớn trên một cuộn giấy dài và muốn khoe với
anh trai Petia về thành quả vừa đạt được. Tuy nhiên,  khi Vaxia vừa ra
khỏi phòng để gọi anh trai thì cô em Kachia chạy vào phòng và xé rách
cuộn giấy thành một số mảnh. Kết quả là trên mỗi mảnh có một hoặc vài kí
số theo thứ tự đã viết.

Bây giờ Vaxia không thể nhớ chính xác mình đã viết số gì. Vaxia chỉ nhớ
rằng đó là một số rất lớn.

Để làm hài lòng cậu em trai, Petia quyết định truy tìm  số nào là lớn
nhất mà Vaxia đã có thể viết lên cuộn giây trước khi bị xé. Bạn hãy giúp
Petia làm việc này.

***Dữ liệu vào:***

-   Ghi một hoặc nhiều dòng. Mỗi dòng ghi một dãy kí số. Số dòng không
    vượt quá 100. Mỗi dòng ghi từ 1 đến 100 kí số. Bảo đảm rằng có ít
    nhất một dòng mà kí số đầu tiên khác 0.

***Dữ liệu ra:***

-   Ghi ra số lớn nhất đã có thể viết trên cuộn giấy trước khi bị xé
    rách.

**Ví dụ**

  -----------------------------------------------------------------------
  **BAI4.INP**                        **BAI4.OUT**
  ----------------------------------- -----------------------------------
  2\                                  66220004
  20\                                 
  004\                                
  66                                  

  3                                   3
  -----------------------------------------------------------------------

**ĐÁP ÁN**

var s: array\[0..1000\] of string;

i,n,j: word;

procedure qsort(L,H: word);

var tg,k:string;

begin

if l\>=h then exit;

i:=l; j:=h;

tg:=s\[(l+h) div 2\];

repeat

while tg+s\[i\]\<s\[i\]+tg do inc(i);

while tg+s\[j\]\>s\[j\]+tg do dec(j);

if i\<=j then

begin

if i\<j then begin

k:=s\[i\];

s\[i\]:=s\[j\];

s\[j\]:=k;

end;

inc(i);dec(j);

end;

until i\>j;

Qsort(l,j);Qsort(i,h);

end;

begin

s\[0\]:=\'0\'; n:=0;

while s\[n\]\<\>\'\' do

begin

inc(n);

readln(s\[n\]);

end;

qsort(1,n-1);

for i:=1 to n-1 do write(s\[i\]);

readln;

end.
