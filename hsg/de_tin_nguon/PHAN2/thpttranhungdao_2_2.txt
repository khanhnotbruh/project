**Nguyễn Hoàn Phúc -- THPT Trần Hưng Đạo**

**CAUHOI**

**Câu 2:** Cho N điểm, hãy kiểm tra xem có bao nhiêu bộ 3 điểm thẳng
hàng.

***\
Input***: Cho trong tệp văn bản DL.INP

\- Dòng thứ 1 ghi số N

\- N dòng tiếp theo, mỗi dòng ghi toạ độ của một điểm.

***Output***: Ghi vào tệp KQ.OUT chứa một số duy nhất là số bộ 3 điểm
thẳng hàng.

*(Giới hạn: 1\<=N\<=2000, toạ độ các điểm có giá trị tuyệt đối không quá
10000)*

+-----------------------+----------------------------------------------+
| DL.\                  | KQ.OUT                                       |
| NP                    |                                              |
+=======================+==============================================+
| 6                     | 3                                            |
|                       |                                              |
| 0 0                   |                                              |
|                       |                                              |
| 0 1                   |                                              |
|                       |                                              |
| 0 2                   |                                              |
|                       |                                              |
| 1 1                   |                                              |
|                       |                                              |
| 1 2                   |                                              |
|                       |                                              |
| 2 2                   |                                              |
+-----------------------+----------------------------------------------+

DAPAN

+----------+------------------------------------------+---------------+
| Test     | Yêu cầu                                  |               |
+==========+==========================================+===============+
| 1        | -   Cứ $30\%$ số test ứng với $30\%$ số  |               |
|          |     điểm của $1 \leq N \leq 100.$        |               |
+----------+------------------------------------------+---------------+
| 2        | -   Cứ $30\%$ số test khác ứng với       |               |
|          |     $30\%$ số điểm cú                    |               |
|          |     $1 \leq N \leq 500.$                 |               |
+----------+------------------------------------------+---------------+
| 3        | -   Cứ 40% số test ứng với $40\%$ số     |               |
|          |     điểm cú $1 \leq N \leq 2000.$        |               |
+----------+------------------------------------------+---------------+

const maxn=2000;

type td=record x,y:integer; end;

var a: array\[1..maxn\] of td;

free:array\[1..maxn\] of boolean;

n,i:integer; c:longint; f:text;

{=======================================}

Procedure DocDL;

begin

assign(f,\'DL.INP\'); reset(f); readln(f,n);

for i:=1 to n do readln(f,a\[i\].x,a\[i\].y);

close(f);

end;

{======================================}

Procedure Dem;

var j,k,x1,y1,tmp:integer;

begin

c:=0;

for i:=1 to n-1 do

begin

fillchar(free,sizeof(free),true);

for j:=i+1 to n-1 do

if free\[j\] then

begin

tmp:=1;

x1:=a\[j\].x-a\[i\].x; y1:=a\[j\].y-a\[i\].y;

for k:=j+1 to n do

if free\[k\] then

if x1\*(a\[k\].y-a\[i\].y)=y1\*(a\[k\].x-a\[i\].x) then

begin

inc(tmp);

free\[k\]:=false;

end;

inc(c,tmp\*(tmp-1) div 2);

end;

end;

end;

{========================================}

procedure Xuat;

begin

assign(f,\'KQ.OUT\'); rewrite(f); writeln(f,c); close(f);

end;

{====================================}

Begin

DocDL; Dem; Xuat;

End.
