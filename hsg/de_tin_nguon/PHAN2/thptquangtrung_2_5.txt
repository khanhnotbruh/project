Nguyễn Đức Hải -- THPT Quang Trung

CÂU HỎI

Nhập vào một xâu s không quá 255 ký tự và in ra các từ của nó (Từ là một
dãy các kí tự, cách nhau bởi dấu cách). Xâu có bao nhiêu từ là đối xứng?

  -----------------------------------------------------------------------
  Tudoixung.inp                       Tudoixung.out
  ----------------------------------- -----------------------------------
  Hai hah tin hoc 121 vav             3

  -----------------------------------------------------------------------

ĐÁP ÁN

const fi=\'tudoixung.inp\';

fo=\'tudoixung.out\';

var s : string;

dem : integer; f1,f2:text;

function doixung(x : string) : boolean;

var y : string;

i : integer;

begin

y := \'\';

for i := length(x) downto 1 do y := y + x\[i\];

if x=y then doixung := true else doixung := false;

end;

procedure tach;

var i, len : integer;

t : string;

begin

writeln(\'Cac tu trong xau:\');

i := 1; len := length(s);

repeat

while (s\[i\]=\' \') and (i\<=len) do inc(i);

if i\>=len then break;

t := \'\';

while (s\[i\]\<\>\' \') and (i\<=len) do begin

t := t + s\[i\];

inc(i);

end;

writeln(t);

if doixung(t) then inc(dem);

until i \>= len;

writeln(\'So tu doi xung trong xau:\',dem);

write(f2,dem);

end;

BEGIN

assign(f1,fi); reset(f1);

assign(f2,fo); rewrite(f2);

write(\'Nhap vao 1 xau:\');

readln(f1,s);

tach;

close(f1); close(f2);

END.
