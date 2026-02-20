Vũ Văn Lưu -- THPT Toàn Thắng

CAUHOI

**Bài 2: Rút gọn xâu (6 điểm)**

Cho xâu S chỉ chứa các dấu "+", "-" .Tìm cách rút gọn xâu S theo quy tắc
sau: Thay mỗi nhóm dấu "+" liên tiếp hoặc dấu "-" liên tiếp bằng dấu "+"
hoặc dấu "--".

**Dữ liệu vào:** **BAI2.INP** chứa xâu S có độ dài không quá 100000 kí
tự

**Dữ liệu ra:** **BAI2.INP** chứa xâu S sau khi rút gọn

  -----------------------------------------------------------------------
  **BAI2.INP**                        **BAI2.OUT**
  ----------------------------------- -----------------------------------
  ++\-\--+\--+++-                     +-+-+-

  -----------------------------------------------------------------------

***Các ràng buộc:***

*60% số test tương ứng với 60% số điểm có độ dài xâu không quá 255 kí
tự;*

*40% số test tương ứng với 40% số điểm có độ dài xâu không quá 10^5^ kí
tự*

DAPAN

Lời giải tham khảo:

program bai2;

var

f1,f2:text;

s:ansistring;

begin

assign(f1,\'bai2.inp\');reset(f1);

assign(f2,\'bai2.out\');rewrite(f2);

readln(f1,s);

while pos(\'++\',s)\<\>0 do delete(s,pos(\'++\',s),1);

while pos(\'\--\',s)\<\>0 do delete(s,pos(\'\--\',s),1);

write(f2, s);

close(f1);

close(f2);

end.
