Phạm Văn Giang -- THPT Thủy Sơn

CAUHOI

> Tại 1 thành phố có 1 trạm kiểm soát ô tô (các ô tô đều có biển số có 4
> chữ số), chỉ các ô tô có biển số là số nguyên tố mới được đi vào thành
> phố. Tuy nhiên hệ thống nhận dạng của các kỹ sư tin học của thành phố
> bị sai, các biển số xe ô tô thì đều nhận dạng ngược.
>
> **Ví dụ**: Biển số xe là 0003 thì bị nhận dạng là 3000.
>
> Bạn hãy giúp xác định chính xác có bao nhiêu ô tô có thể vào thành
> phố?
>
> **Dữ liệu**: Vào từ file văn bản **bai2.inp**

-   Dòng 1: Số nguyên dương N tương ứng số lượng ô tô qua trạm kiểm
    soát. (𝑁 ≤ 10^5^)

-   Dòng tiếp theo, N số nguyên dương có 4 chữ số thập phân, tương ứng
    là biển số xe bị đảo ngược (0001 ≤ biển số ≤ 9999)

> *Các số trên một dòng của input file được ghi cách nhau bởi dấu cách.*
>
> **Kết quả**: Ghi ra file văn bản **bai2.out**

-   Một số duy nhất là số lượng xe có biển số là nguyên tố?

# Ví dụ:

+---------------------------------------+------------------------------+
| > **Bai2.inp**                        | **Bai2.out**                 |
+=======================================+==============================+
| 4                                     | 2                            |
|                                       |                              |
| 3000 0013 8009 7100                   |                              |
+---------------------------------------+------------------------------+

DAPAN

var f,f1:text;

n,i,k2:word;

a:array\[1..100000\] of integer;

function sodao(k:integer):integer;

var s,s1:string;

j,d,m:integer;

begin

k:=k+10000;

str(k,s);

s1:=\'\';

for j:=length(s) downto 2 do s1:=s1+s\[j\];

val(s1,m,d);

sodao:=m;

end;

function nto(k1:integer):boolean;

var j1:integer;

begin

nto:=true;

if k1\<2 then nto:=false

else

for j1:=2 to trunc(sqrt(k1)) do

if k1 mod j1=0 then

begin

nto:=false;

break;

end;

end;

begin

assign(f,\'bai2.inp\');reset(f);

assign(f1,\'bai2.out\');rewrite(f1);

read(f,n);

for i:=1 to n do read(f,a\[i\]);

k2:=0;

for i:=1 to n do

if nto(sodao(a\[i\])) then inc(k2);

write(f1,k2);

close(f);close(f1);

end.
