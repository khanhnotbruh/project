**Nguyễn Đức Hải -- THPT Quang Trung**

**CÂU HỎI**

**Palindom**

Một xâu được gọi là palindom loại k nếu nó là xâu đối xứng có độ dài k.
Cho xâu S độ dài không quá 250, hãy kiểm tra trong xâu có bao nhiêu
palindom loại k?

\- Dữ liệu vào (palin.inp) gồm:

\+ Dòng đầu là số nguyên k

\+ Dòng 2 là một xâu S độ dài không quá 250.

\- Dữ liệu ra (palin.out) gồm:

\+ Số nguyên duy nhất là số lượng xâu palindom loại k có trong S.

+-----------------------------------+-----------------------------------+
| Palin.inp                         | Palin.out                         |
+===================================+===================================+
| 3                                 | 3                                 |
|                                   |                                   |
| Doi tuyen tin hoc dang ma hoa xau |                                   |
| aaaaba                            |                                   |
+-----------------------------------+-----------------------------------+

ĐÁP ÁN

const fi=\'palindom.inp\';

fo=\'palindom.out\';

var s:string;

k:longint;

procedure doc;

var f1:text;

begin

assign(f1,fi); reset(f1);

readln(f1,k); readln(f1,s);

close(f1);

end;

function dx(d,c:longint):boolean;

var j:longint;

begin

for j:=d to (d+c) div 2 do

if s\[j\]\<\>s\[c-j+d\] then exit(false);

exit(true);

end;

procedure xuli;

var f2:text;

i,kq,n:longint;

begin

assign(f2,fo); rewrite(f2); kq:=0; n:=length(s);

for i:=1 to length(s)-k+1 do

if dx(i,i+k-1) then inc(kq);

writeln(f2,kq);

close(f2);

end;

BEGIN

doc;

xuli;

END.
