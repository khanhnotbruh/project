Nguyễn Thị Duyên -- Trường THPT Cộng Hiền

**CÂU HỎI**

**Bài 1. Tiền tiêu vặt (6 điểm)**

Hôm nay, mẹ cho siro tiền tiêu vặt. Siro được cho tổng cộng n tờ tiền
với các mệnh giá 20, 50 , 100. Biết tổng giá trị của mỗi mệnh giá là
bằng nhau.

**Yêu cầu**: Tìm số lượng tờ tiền của mỗi mệnh giá.

**Dữ liệu vào**

-   Dòng đầu tiên ghi số nguyên dương T (1≤*T*≤100) là số bộ test,

-   T dòng tiếp theo, mỗi dòng ghi 1 số nguyên n (0≤n≤10^18^)

**Dữ liệu ra**

-   In ra T dòng, mỗi dòng ghi 3 số nguyên dương lần lượt là số lượng tờ
    > tiền của các mệnh giá 20, 50, 100. Nếu không tìm được nghiệm thì
    > in ra-1.

**Ví dụ**

+-----------------------------------------+----------------------------+
| **BAI1.INP**                            | **BAI1.OUT**               |
+=========================================+============================+
| 3                                       | 5 2 1                      |
|                                         |                            |
| 8                                       | 10 4 2                     |
|                                         |                            |
| 16                                      | -1                         |
|                                         |                            |
| 23                                      |                            |
+-----------------------------------------+----------------------------+

**ĐÁP ÁN**

var n,z,x,y:int64;

t,i:byte;

fi,fo:text;

procedure docdl;

begin

assgin(fi,'bai1.inp');reset(fi);

assgin(fo,'bai1.out');reset(fo);

end;

begin

docdl;

readln(fi,T);

for i:=1 to t do

begin

readln(fi,n);

if n mod 8=0 then begin z:= n div 8; x:=5\*z;y:=2\*z; writeln(fo,x,\'
\',y,\' \',z) end

else writeln(-1);

end;

close(fi); close(fo);

end.
