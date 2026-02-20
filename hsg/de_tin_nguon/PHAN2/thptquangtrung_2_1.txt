**Trần Thị Ngọc Ánh -- THPT Quang Trung**

**CÂU HỎI**

**Sửa xâu**

***MODIFYSTR.PAS***

Hãy viết chương trình nhập vào từ bàn phím một xâu ký tự, trong đó, nếu
tính từ trái sang phải thì ký tự \# là dấu hiệu xoá đi một ký đứng ngay
trước nó nếu có. Sau đó in ra màn hình xâu đã sửa chữa theo đúng qui
định.

**Ví dụ:**

'Ta#oi thi hoc sinua#h###nh gioi tin hoj#c' có nghĩa là 'Toi thi hoc
sinh gioi tin hoc'

**Dữ liệu :** Vào từ bàn phím xâu cần sửa.

**Kết quả**: In ra màn hình xâu đã sửa.

**ĐÁP ÁN**

**Bài 1: (6 điểm)**

Test 1: 2 điểm

'Ta#oi thi hoc sinua#h###nh gioi tin hoj#c' có nghĩa là 'Toi thi hoc
sinh gioi tin hoc'

  -----------------------------------------------------------------------
  Xâu ban đầu        Ta#oi thi hoc sinua#h###nh gioi tin hoj#c
  ------------------ ----------------------------------------------------
  Xâu đã sửa chữa    Toi thi hoc sinh gioi tin hoc

  -----------------------------------------------------------------------

Test 2: 2 điểm

  -----------------------------------------------------------------------
  Xâu ban đầu        Ngay thi 04/#/12\--#/2000#4
  ------------------ ----------------------------------------------------
  Xâu đã sửa chữa    Ngay thi 04/12/2004

  -----------------------------------------------------------------------

Test 3: 2 điểm

  -----------------------------------------------------------------------
  Xâu ban đầu        #Hy vong bai lam rat tott#
  ------------------ ----------------------------------------------------
  Xâu đã sửa chữa    Hy vong bai lam rat tot

  -----------------------------------------------------------------------

const fi=\'modifystr.inp\';

fo=\'modifystr.out\';

var i:byte;

s:string;

f1,f2:text;

BEGIN

assign(f1,fi); reset(f1);

assign(f2,fo); rewrite(f2);

readln(f1,s);

while pos(\'#\',s)\<\>0 do

if pos(\'#\',s)=1 then Delete(s,pos(\'#\',s),1)

else delete(s,pos(\'#\',s)-1,2);

write(f2,s);

close(f1); close(f2);

END.
