Nguyễn Đức Hải -- THPT Quang Trung

CÂU HỎI

Chuẩn hóa xâu

Nhập vào một xâu s khác rỗng và thực hiện chuẩn hoá xâu, tức là:

a)  Xoá các dấu cách thừa

b)  Chuyển những kí tự đầu từ thành chữ hoa, những kí tự khác thành chữ
    thường.

  -----------------------------------------------------------------------
  chuanhoaxau.inp                     chuanhoaxau.out
  ----------------------------------- -----------------------------------
  hai phong                           Hai Phong

  -----------------------------------------------------------------------

ĐÁP ÁN

const fi=\'chuanhoaxau.inp\';

fo=\'chuanhoaxau.out\';

var s : string; f1,f2:text;

procedure chuanhoa(var s : string);

var i : integer;

begin

while s\[1\]=\' \' do delete(s,1,1);

while s\[length(s)\]=\' \' do delete(s,length(s),1);

For i := length(s) downto 2 do

if (s\[i\]=\' \') and (s\[i-1\]=\' \') then delete(s,i,1);

s\[1\] := Upcase(s\[1\]);

for i := 2 to length(s) do

if s\[i-1\]=\' \' then s\[i\] := Upcase(s\[i\])

else

if s\[i\] in \[\'A\'..\'Z\'\] then

s\[i\] := chr(ord(s\[i\]) + 32);

end;

BEGIN

assign(f1,fi);reset(f1);

assign(f2,fo); rewrite(f2);

readln(f1,s);

chuanhoa(s);

write(f2,s);

close(f1); close(f2);

END.
