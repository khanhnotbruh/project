Kiều Nguyệt Nga -- THPT Toàn Thắng

CAUHOI

**Câu 4: Mật khẩu:**

Một xâu ký tự được gọi là mật khẩu \"an toàn\" nếu thỏa mãn các điều
kiện: Độ dài của xâu đó \>= 6, chứa ít nhất một chữ cái in hoa
(\'A\'..\'Z\'), chứa ít nhất một chữ cái thường (\'a\'..\'z\') vàchứa ít
nhất một chữ số (\'0\'..\'9\').

Ví dụ: \'a1B2C3\', \'tinHoc6\' là hai mật khẩu \"an toàn\", còn
\'a1B2C\', \'a1b2c3\', \'A1B2C3\',\'tinhoc\' đều không phải là mật khẩu
\"an toàn\".

Cho một xâu S mà mỗi ký tự trong S thuộc một trong ba loại sau: Chữ cái
in hoa (\'A\'..\'Z\'), chữ cái thường (\'a\'..\'z\'), chữ số
(\'0\'..\'9\').Tìm xem có bao nhiêu cặp chỉ số (i,j) thỏa mãn điềukiện:
1 \<=i\<j\<=length(s) và xâu con gồm các ký tự liên tiếp từ i đến j của
S là mật khẩu \"an toàn\".

***Input***: Cho trong file văn bản BAI2.INP gồm duy nhất một dòng chứa
xâu S có độ dài không quá 5000 kí tự.

***Output:***Kết quả ghira file văn bản BAI2.OUT một số nguyên là số
lượng cặp chỉ số (i,j) tính được.

***Ví dụ*:**

  -------------------------------------------------------------------------
  BAI2.INP                  BAI2.OUT        BAI2.INP        BAI2.OUT
  ------------------------- --------------- --------------- ---------------
  abc3456789PQ              6               abc123          0

  -------------------------------------------------------------------------

DAPAN

var

f1,f2:text;

s,x:ansistring;

i,j,n,k:longint;

d1,d2,d3,dem:int64;

ok:boolean;

begin

assign(f1,\'bai2.inp\');reset(f1);

assign(f2,\'bai2.out\');rewrite(f2);

read(f1,s);

close(f1);n:=length(s);dem:=0;

for j:=1 to n-5 do

begin

for i:=6 to n+1-j do

begin

d1:=0;d2:=0;d3:=0;ok:=false;

x:=copy(s,j,i);

for k:=1 to length(x) do

begin

if x\[k\] in \[\'a\'..\'z\'\] then inc(d1) else

if x\[k\] in \[\'A\'..\'Z\'\] then inc(d2) else inc(d3);

if (d1\>=1) and (d2\>=1) and (d3\>=1) and ((d1+d2+d3)\>=6)then

begin

ok:=true;

break;

end;

end;

if ok then

begin

dem:=dem+n-i-j+2;

break

end;

end;

end;

write(f2,dem); close(f2);

end.
