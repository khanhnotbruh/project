**Nguyễn Đức Hải -- THPT Quang Trung**

**CÂU HỎI**

**Số điện thoại đẹp**

Theo tín ngưỡng và sở thích của người dân Việt Nam, khi muốn sở hữu một
số điện thoại mọi đều rất mong muốn đó là một số điện thoại đẹp. Người
ta tự quy ước với nhau số điện thoại thỏa mãn 2 điều kiện sau là số đẹp:

-   Có ít nhất 4 chữ số cuối tăng liên tục hoặc 2 số cuối là 68 hoặc 79

-   không được chứa số 49 và số 53 (01234956789, 01212226537)

> Thầy Quyền muốn mua một sim số đẹp, sau khi ra cửa hàng nhân viên bán
> hàng đưa ra một list số điện thoại vì thời gian có hạn nên thầy quyền
> muốn gom tất cả số điện thoại đẹp lại để chọn số ưa thích. Bạn hãy
> viết chương trình giúp thầy lọc ra các số điện thoại đẹp và là số ưa
> thích của thầy (số ưa thích của thầy là số đẹp và chứa ngày hoặc tháng
> sinh là 20 hoặc 02).

**\* Tệp dữ liệu vào sodep.inp gồm:**

\- dòng đầu là số nguyên dương n (0 \< n \<= 10^3^)

\- n dòng sau, mỗi dòng là một số điện thoại (dl cho đúng như số điện
thoại bình thường, bắt đầu bằng số 0, có 10 hoặc 11 chữ số).

**\* Tệp dữ liệu ra sodep.out gồm:**

\- dòng đầu là số m (tổng các số điện thoại đẹp và ưa thích của thầy
Quyền).

\- m dòng sau, mỗi dòng là một số đẹp hoặc ưa thích của thầy Quyền được
lọc từ danh sách vào.

Vd

+-----------------------------------+-----------------------------------+
| Sodep.inp                         | Sodep.out                         |
+===================================+===================================+
| 5                                 | 3                                 |
|                                   |                                   |
| 01234526789                       | 0988220123                        |
|                                   |                                   |
| 0988220123                        | 0979200268                        |
|                                   |                                   |
| 0979200268                        | 01220206379                       |
|                                   |                                   |
| 0120002798                        |                                   |
|                                   |                                   |
| 01220206379                       |                                   |
+-----------------------------------+-----------------------------------+

ĐÁP ÁN

const fi=\'sodep.inp\';

fo=\'sodep.out\';

var f1,f2:text;

s1:string;

n,i:longint;

a:array\[1..1001\] of string;

check:array\[1..1001\] of boolean;

procedure doc;

begin

assign(f1,fi);reset(F1);

assign(f2,fo);rewrite(F2);

readln(f1,n);

for i:=1 to n do

readln(f1,a\[i\]);

close(f1);

end;

function dep(x:string):boolean;

var j:longint;

s1,s2:string;

begin

dep:=true;

s1:=copy(x,length(x)-3,4);

for j:=1 to length(s1)-1 do

if s1\[j\]\>s1\[j+1\] then

begin

dep:=False;

break;

end;

if dep=false then

begin

s2:=copy(x,length(x)-1,2);

if (s2\<\>\'68\')and(s2\<\>\'79\')then exit(False);

dep:=true;

end;

if (pos(\'49\',x)\<\>0)or(pos(\'53\',x)\<\>0) then exit(false);

end;

function uathich(s:string):boolean;

begin

if dep(s)=false then exit(false)

else

if (pos(\'02\',s)=0)and(pos(\'20\',s)=0) then exit(false);

exit(True);

end;

BEGIN

doc;

for i:=1 to n do check\[i\]:=uathich(a\[i\]);

for i:=1 to n do if check\[i\] then writeln(f2,a\[i\]);

close(F2);

END.
