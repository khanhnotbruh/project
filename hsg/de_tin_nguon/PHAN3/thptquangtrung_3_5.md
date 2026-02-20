**Phạm Thị Thùy Dương -- THPT Quang Trung**

**CÂU HỎI**

**Thưởng**

Công ty may mặc xuất khẩu A có số lượng khách hàng là n, mỗi năm công ty
có chế độ thưởng riêng cho khách hàng tiêu thụ nhiều sản phẩm. Khách
hàng được thưởng phải có số lượng sản phẩm tiêu thụ nằm trong top 10
người tiêu thụ nhiều nhất. Em hãy giúp công ty này kiểm tra một khách
hàng có nhận được phần thưởng hay không?

-   Dữ liệu vào thuong.inp gồm

    -   Dòng đầu là số nguyên dương n và số k (3\<=n\<=10^7^,
        1\<=k\<=n).

    -   Dòng thứ 2 là n số nguyên dương, mỗi số a~i~ tương ứng với lượng
        sản phẩm tiêu thụ của khách hàng thứ i.

-   Dữ liệu ra là CO nếu khách hàng thứ k có số lượng sản phẩm tiêu thu
    trong top 10 người tiêu thụ nhiều nhất, KHONG nếu ngược lại.

Vd

+-----------------------------------+-----------------------------------+
| thuong.inp                        | thuong.out                        |
+===================================+===================================+
| 15 2                              | CO                                |
|                                   |                                   |
| 6 3 2 4 22 2 1 2 1 1 2 3 4 1      |                                   |
+-----------------------------------+-----------------------------------+
| 15 5                              | CO                                |
|                                   |                                   |
| 6 3 2 4 2 2 2 1 2 1 1 2 3 4 1     |                                   |
+-----------------------------------+-----------------------------------+
| 15 15                             | KHONG                             |
|                                   |                                   |
| 6 3 2 4 2 2 2 1 2 1 1 2 3 4 1     |                                   |
+-----------------------------------+-----------------------------------+

-   Sub 1: 50% điểm với n\<=10^3^

-   Sub 2: 30% điểm với (10^3^\<n\<=10^6^)

-   Sub 3: 20% điểm với (10^6^\< n \<= 10^7^)

ĐÁP ÁN

var n,k:longint;

a:array\[0..100000\] of longint;

fi,fo:text;

procedure modoc;

var i,x:longint;

begin

for i:=0 to 100000 do

a\[i\]:=0;

readln(fi,n,k);

for i:=1 to n do

begin

read(fi,x);

if i=k then k:=x;

inc(a\[x\]);

end;

end;

procedure xuli;

var i,res,dem:longint;

ok:boolean;

begin

dem:=0;

i:=100001;

ok:=false;

repeat

dec(i);

if a\[i\]\<\>0 then inc(dem,a\[i\]);

if (i=k) then

if (dem-a\[i\]\<10) then

begin

ok:=true;

break;

end

else

begin

ok:=false;

break;

end;

until (dem=10)or(i=1);

if ok=true then write(fo,\'CO\')

else write(fo,\'KHONG\');

close(fo);

end;

BEGIN

assign(fi,\'thuong.inp\');

assign(fo,\'thuong.out\');

reset(fi);rewrite(fo);

modoc;

xuli;

END.
