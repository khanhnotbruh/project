Đỗ Thu Thủy -- THPT Hàng Hải

CAUHOI (10 điểm)

Cho xâu s gồm ít nhất 3 kí tự số. Xóa bỏ một số kí tự trong xâu s chỉ để
lại 3 kí tự số sao cho vẫn giữ nguyên thứ tự của chúng tạo nên số có giá
trị lớn nhất.

Dữ liệu vào: Từ tệp data.inp gồm 1 dòng chứa xâu s

Dữ liệu ra: ghi vao tệp data.out xâu s chứa 3 kí tự số còn lại tạo thành
số lớn nhất.

DAPAN

Program xoakitu;

var f,g:text;

s:string;

{=====================}

procedure Nhap;

Begin

assign(f,\'data.inp\'); reset(f);

read(f,S);

close(f);

end;

{======================}

procedure xuly;

var i,j,k:byte;

begin

i:=1;

35

repeat

if s\[i\] in \[\'0\'..\'9\'\] then inc(i) else delete(s,i,1);

until i\>length(s);

for i:=1 to 3 do

begin

k:=i;

for j:=i to length(s)+i-3 do

if s\[k\]\<s\[j\] then k:=j;

if k\>i then delete(s,i,k-i);

end;

assign(f,\'data.out\'); rewrite(f);

writeln(f,copy(s,1,3));

close(f);

end;

{===========================}

Begin Nhap; xuly; readln; end.
