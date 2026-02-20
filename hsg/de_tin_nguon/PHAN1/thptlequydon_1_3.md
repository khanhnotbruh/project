VŨ NAM TUYÊN -- THPT LÊ QUÝ ĐÔN

CAUHOI

***[Câu 1(6d):]{.underline}***

Một giải bóng đá đấu giao hữu có N đội thi đấu vòng tròn, mỗi đội gặp
nhau một lần. Cho dữ liệu từ tệp CAU1.INP chứa số N (1\<N\<10000). Em
hãy lập trình tìm ra số trận đấu rồi ghi lên tệp CAU1.OUT

Ví dụ:

  -----------------------------------------------------------------------
  CAU1.INP                          CAU1.OUT
  --------------------------------- -------------------------------------
  2                                 1

  -----------------------------------------------------------------------

DAPAN

program cau1;

var N: longint;

> f1,f2: text;

begin

assign(f1,\'C:\\TUYENLQD\\CAU1.INP\');

reset(f1);

assign(f2,\'C:\\TUYENLQD\\CAU1.OUT\');

rewrite(f2);

readln(f1,n);

write(f2, trunc(\*(n-1)/2));

close(f2);

end.
