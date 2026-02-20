Nguyễn Văn Tài - THPT Lê Ích Mộc

CAUHOI

Cho xâu ký tự S không quá 500 ký tự. Đổi các ký tự ở đầu từ thành chữ
hoa, các ký tự còn lại trong từ thành chữ thường và in ra tệp mỗi từ
trên một dòng

**Dữ liệu vào:** xâu S được lưu trong tệp Bai1.INP gồm một xâu không quá
500 ký tự

**Kết quả:** Đưa ra tệp Bai1.OUT là các từ được in trên từng dòng

Ví dụ:

+-----------------------------------+-----------------------------------+
| **Bai1.INP**                      | **Bai1.OUT**                      |
+===================================+===================================+
| TrUOng em maNg ten trang nguYEn   | Truong                            |
| le ich moC                        |                                   |
|                                   | Em                                |
|                                   |                                   |
|                                   | Mang                              |
|                                   |                                   |
|                                   | Ten                               |
|                                   |                                   |
|                                   | Trang                             |
|                                   |                                   |
|                                   | Nguyen                            |
|                                   |                                   |
|                                   | Le                                |
|                                   |                                   |
|                                   | Ich                               |
|                                   |                                   |
|                                   | Moc                               |
+-----------------------------------+-----------------------------------+

DAPAN

const

fi=\'lim15.inp\';

fo=\'lim15.out\';

var

f1,f2:text;

s,kq:string;

i:integer;

begin

assign(f1,fi);

assign(f2,fo);

reset(f1);

rewrite(f2);

while not eoln(f1) do

begin

readln(f1,s);

kq:=lowercase(s);

while s\[1\]=\' \' do

delete(s,1,1);

if s\[length(s)\]\<\>\' \' then

s:=s+\' \';

while pos(\' \',kq)\<\>0 do

begin

write(f2,upcase(copy(kq,1,1)));

write(f2,copy(kq,2,pos(\' \',kq)-2));

delete(kq,1,pos(\' \',kq));

writeln(f2);

end;

end;

close(f1);

close(f2);

end.
