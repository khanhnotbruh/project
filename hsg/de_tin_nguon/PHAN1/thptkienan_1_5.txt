Nguyễn Thị Mỵ - THPT Kiến An

CAUHOI

**Bài 1**: (4 điểm)

Xâu đối xứng là xâu khi viết nó từ trái qua phải cũng thu được kết quả
giống như viết nó từ phải qua trái

Từ một xâu ký tự cho trước (độ dài tối đa 200 ký tự), hãy kiểm tra xâu
đó có phải là xâu đối xứng hay không?

*Dữ liệu vào:* Trong tệp xaudx.inp

*Dữ liệu ra:* Ghi trong tệp xaudx.out

> Ghi "co" nếu xâu đã cho đối xứng
>
> Ghi " khong" nếu xâu đã cho không phải là đối xứng

Ví dụ:

  -----------------------------------------------------------------------
  **xaudx.inp**                       **xaudx.out**
  ----------------------------------- -----------------------------------
  bccb                                co

  acc                                 khong
  -----------------------------------------------------------------------

DAPAN

uses crt;

var

s: string;

fi, fo: text;

i: integer;

kq: boolean;

begin

clrscr;

assign(fi,\'xaudx.inp\');

assign(fo,\'xaudx.out\');

reset(fi);

rewrite(fo);

readln(fi,s);

kq := true;

for i:= 1 to length(s) div 2 do

begin

if (s\[i\] \<\> s\[length(s) - i + 1\]) then

begin

kq := false;

break;

end;

end;

if (kq) then write(fo,\'co\') else write(fo,\'khong\');

close(fi);

close(fo);

end.
