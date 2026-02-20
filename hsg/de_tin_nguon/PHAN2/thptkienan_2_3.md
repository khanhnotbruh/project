Hoàng Tiến Long -- THPT Kiến An

CAUHOI

**Bài 2: Số lớn** (4.0 điểm)

Tên file: nmax.pas\
Dữ liệu vào: nmax.inp\
Dữ liệu ra: nmax.out

Peter và Bin chơi trò chơi tìm số lớn, Peter cho Bin biết trước một xâu
kí tự, trong đó có ít nhất 5 chữ số. Peter yêu cầu Bin tìm số lớn nhất
từ xâu đã cho bằng cách hãy loại bỏ một số kí tự ra khỏi xâu sao cho 5
kí tự cuối cùng còn lại theo đúng thứ tự đó tạo thành số lớn nhất.

**Dữ liệu**: Dòng 1 gồm một xâu cho trước

**Kết quả**: Một dòng duy nhất chứa số nguyên là số lớn nhất mà Bin tìm
được sau khi loại bỏ các kí tự.

**Ví dụ:**

  -----------------------------------------------------------------------
  nmax.inp                            nmax.out
  ----------------------------------- -----------------------------------
  13a7b48cb7d9e68f7                   89687

  -----------------------------------------------------------------------

**DAPAN**

var f,g:text;

s:ansistring;

Procedure Nhap;

Begin

assign(f,\'nmax.inp\'); reset(f);

assign(g,\'nmax.out\'); rewrite(g);

read(f,S);

close(f);

end;

Procedure xuly;

var i,j,k:byte;

begin

i:=1;

repeat

if s\[i\] in \[\'0\'..\'9\'\] then inc(i) else delete(s,i,1);

until i\>length(s);

for i:=1 to 5 do

begin

k:=i;

for j:=i to length(s)+i-5 do

if s\[k\]\<s\[j\] then k:=j;

if k\>i then delete(s,i,k-i);

end;

writeln(g,copy(s,1,5));

close(g);

end;

Begin

Nhap; xuly; readln;

End.
