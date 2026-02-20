Vũ Thị Hương Giang - THPT Lê Ích Mộc

CAUHOI

Chuẩn hóa xâu:

Bạn Hoa thực hiện soạn thảo văn bản, nhưng mới gõ được một 1 đoạn chưa
quá 255 kí tự thì phát hiện ra lỗi : đó là 1 số các từ bị chèn thêm vào
các kí tự dấu cách, hơn nữa lại còn bị biến đổi chữ hoa và thường. Hãy
tìm cách giải quyết giúp bạn, xử lý chuẩn hóa đoạn văn bản trên: Xoá các
dấu cách thừa trong đoạn, chuyển những kí tự đầu từ thành chữ hoa, những
kí tự khác thành chữ thường.

**Dữ liệu vào**:

Tệp CHUANHOA.INP chứa đoạn văn bản

**Kết quả:**

Tệp CHUANHOA.OUT chứa xâu đã được chuẩn hóa

**Ví dụ:**

  -----------------------------------------------------------------------
  CHUANHOA.INP                                CHUANHOA.OUT
  ------------------------------------------- ---------------------------
  aBc xYZ abC mn                              Abc Xyz Abc Mn

  -----------------------------------------------------------------------

DAPAN

var s : string;

i : integer;

BEGIN

write(\'Nhap vao 1 xau s:\'); readln(s);

while s\[1\]=\' \' do delete(s,1,1);

while s\[length(s)\]=\' \' do delete(s,length(s),1);

for i := length(s) downto 2 do

if (s\[i\]=\' \') and (s\[i-1\]=\' \') then delete(s,i,1);

s\[1\] := Upcase(s\[1\]);

for i := 2 to length(s) do

if s\[i-1\]=\' \' then s\[i\] := Upcase(s\[i\])

else

if s\[i\] in \[\'A\'..\'Z\'\] then s\[i\] := chr(ord(s\[i\]) + 32);

writeln(\'Xau s sau khi chuan hoa:\',s);

readln;

END.

while s\[1\]=\' \' do delete(s,1,1); {xoá các kí tự cách thừa ở đầu xâu}

while s\[length(s)\]=\' \' do delete(s,length(s),1); {xoá các kí tự cách
thừa ở cuối xâu}

{xoá các kí tự cách thừa ở giữa các từ: nếu s\[i-1\] là cách thì s\[i\]
là dấu cách là thừa. Phải dùng vòng lặp for downto vì nếu trong quá
trình xoá ta làm giảm chiều dài của xâu, nếu for to sẽ không dừng được.}

for i := length(s) downto 2 do

if (s\[i\]=\' \') and (s\[i-1\]=\' \') then delete(s,i,1);

{Chuyển kí tự đầu xâu thành chữ hoa}

s\[1\] := Upcase(s\[1\]);

{Chuyển s\[i\] là kí tự đầu từ thành chữ hoa. Nếu kí tự trước đó(
s\[i-1\]) là dấu cách thì sẽ đổi kí tự sau đó (S\[i\]) thành hoa}

for i := 2 to length(s) do

if s\[i-1\]=\' \' then s\[i\] := Upcase(s\[i\])

else

if s\[i\] in \[\'A\'..\'Z\'\] then {s\[i\] là kí tự chữ hoa không ở đầu
một từ}

s\[i\] := chr(ord(s\[i\]) + 32); {thì phải chuyển thành chữ thường}

end;

BEGIN

write(\'Nhap vao 1 xau s:\');

readln(s);

chuanhoa(s);

writeln(\'Xau s sau khi chuan hoa:\',s);

readln;

END.
