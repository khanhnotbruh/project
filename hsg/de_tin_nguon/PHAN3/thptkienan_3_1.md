Nguyễn Đình Giáp -- THPT Kiến An

CAUHOI

**Bài 3: Số bạn bè** (5.0 điểm)

Hai số nguyên được gọi là bạn bè nếu tổng các ước số thực sự (kể cả 1)
của số này bằng số kia và ngược lại.

Chẳng hạn, số 220 có các ước số thực sự là: 1 2 4 5 10 11 20 22 44 55
110.

Tổng các ước số trên là 284.

Số 284 có các ước số thực sự là: 1 2 4 71 142.

Tổng các ước số trên là 220.

Vậy 220 và 284 là hai số bạn bè.

**Yêu cầu**: Tìm tất cả các số bạn bè trong một miền cho trước.

**Dữ liệu vào**: Từ tệp văn bản AMI.INP gồm 2 số nguyên L và H trên cùng
một dòng, cách nhau một khoảng trắng (1\<=L\<=H\<=100000).

**Kết quả ra**: Ghi ra file văn bản AMI.OUT  gồm 0 hay nhiều dòng, mỗi
dòng chứa một cặp số bạn bè (số nhỏ trước, số lớn sau) là số bạn bè
trong khoảng \[L, H\]. Các cặp số được sắp thứ tự tăng dần theo số đứng
trước.

**Ví dụ:**

  -----------------------------------------------------------------------
  **AMI.INP**                            **AMI.OUT**
  -------------------------------------- --------------------------------
  200 300                                220 284

  -----------------------------------------------------------------------

DAPAN

Const

f1=\'ami.inp\';

f2=\'ami.out\';

var l,h,dem,tong:longint;

a:array\[0..900000\] of longint;

f:text;

procedure nhap;

begin

assign(f,f1);

reset(f);

read(f,l,h);

close(f);

end;

function in_array():boolean;

var i:longint;

begin

in_array:=FALSE;

for i:=1 to dem do

if a\[i\] = tong then

begin

in_array:=TRUE;

break;

end

else

in_array:=FALSE;

end;

procedure xuli;

var i,j,tong2:longint;

begin

assign(f,f2);

rewrite(f);

dem:=0;

for i:=l to h do

begin

tong:=0;

for j:=1 to i div 2 do

if i mod j = 0 then tong:=tong+j;

if (tong\>=l) AND (tong\<=h) AND (tong\<\>i) then

begin

tong2:=0;

for j:=1 to tong div 2 do

if tong mod j = 0 then tong2:=tong2+j;

if (tong2 = i) AND (in_array=FALSE) then

begin

inc(dem);

a\[dem\]:=i;

writeln(f,i,\' \',tong);

end;

end;

end;

close(f);

end;

Begin

nhap;

xuli;

End.
