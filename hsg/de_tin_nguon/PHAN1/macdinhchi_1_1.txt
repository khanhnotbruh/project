Nguyễn Thị Nhung - THPT Mạc Đĩnh Chi

**CAUHOI**

**Tìm số (6 điểm)**

Cho số nguyên dương N, khi đảo ngược trật tự các chữ số của N ta sẽ thu
được một số nguyên dương M, M được gọi là số đảo ngược của N.

Ví dụ: N=613 thì M =316 là số đảo ngược của N.

Số nguyên M được gọi là số nguyên tố nếu nó chỉ có hai ước số là 1 và
chính nó, số 1 không phải là số nguyên tố.

Cho 2 số nguyên dương P và Q (1\<=P\<=Q\<=2x10^9^, Q- P\<=10^5^)

Yêu cầu: Hãy tìm tất cả các số nguyên dương N nằm thỏa mãn P\<=X\<=Q và
số đảo ngược của N là số nguyên tố.

**Dữ liệu vào**: Cho trong file văn bản TIMSO.INP chứa hai số nguyên P,
Q. Hai số được ghi ít nhất bởi một dấu cách.

**Dữ liệu ra:** Ghi ra file văn bản TIMSO.OUT trên nhiều dòng, mỗi dòng
ghi một số nguyên N tìm được.

Ví dụ:

+----------------------------------------+-----------------------------+
| TIMSO.INP                              | TIMSO.OUT                   |
+========================================+=============================+
| 10 19                                  | 11                          |
|                                        |                             |
|                                        | 13                          |
|                                        |                             |
|                                        | 14                          |
|                                        |                             |
|                                        | 16                          |
|                                        |                             |
|                                        | 17                          |
|                                        |                             |
|                                        | 19                          |
+----------------------------------------+-----------------------------+

**TRALOI**

**Program** VD;

**Uses** crt;

**Var** i,N, P,Q :longint;

f1,f2:text;

**Function** daonguoc(x:longint):longint;

Var y,j,du:integer;

Begin

y:=0;

while x\<\>0 do

begin

du:=x mod 10; y:=y\*10 +du;

x:=x div 10;

end;

daonguoc:=y;

end;

**Function** ngto(m:longint):boolean;

Var k:longint; kt:boolean;

begin

kt:=true; if m=1 then kt:=false;

for k:=2 to trunc(sqrt(m)) do if m mod k =0 then

begin

kt:=false; break;

end;

ngto:=kt;

end;

**Begin**

assign(f1,\'TIMSO.INP\'); reset(F1);

assign(f2,\'TIMSO.OUT\'); rewrite(F2);

read(f1,p,q);

for i:=p to q do

if ngto(daonguoc(i)) then writeln(f2,i);

close(F1); close(F2);

**End.**
