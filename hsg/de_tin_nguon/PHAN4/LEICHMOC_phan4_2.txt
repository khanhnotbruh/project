Nguyễn Đăng Hiệp - Trường THPT Lê Ích Mộc

CAUHOI

          Cho xâu s (có độ dài không vượt quá 10^3^) chỉ gồm các ký tự
từ \'a\' đến \'z\'.

Yêu cầu: Đếm số lượng xâu con liên tiếp khác nhau nhận được từ xâu s.

Dữ liệu vào: Cho trong file văn bản Bai4.INP, có cấu trúc:

\- Dòng 1: Ghi một xâu ký tự St.

Dữ liệu ra: Ghi ra file văn bản Bai4.OUT, kết quả là số lượng các xâu
con :

Ví dụ:

  -----------------------------------------------------------------------
  Bai4.INP                            Bai4.OUT
  ----------------------------------- -----------------------------------
  abab                                7

  -----------------------------------------------------------------------

DAPAN

Const fi='Bai4.INP';

Fo='bai4.OUT';

var   d,i,j,t:longint;s:ansistring;

        a:array\[1..10000\]of ansistring;

f1,f2:text;

{======================}

procedure Q_sort(l,h:longint);

var x,y:longint;k,tg:string;

begin

        x:=l;

        y:=h;

        k:=a\[(x+y)div 2\];

repeat

        while a\[x\]\<k do inc(x);

        while a\[y\]\>k do dec(y);

        if x\<=y then

        begin

                tg:=a\[x\];

                a\[x\]:=a\[y\];

                a\[y\]:=tg;

                inc(x);dec(y);

        end;

until x\>y;

if x\<h then Q_sort(x,h);

if y\>l then Q_sort(l,y);

end;

{=====================}

procedure  xuly;

 var  kq:longint;

begin

assign(f1,fi;reset(f1);

assign(f2,fo);rewrite(f2)

readln(f1,s);

kq:=0;

for i:=1 to length(s) do

        begin

        d:=1;

        for j:=i to length(s) do

                begin

                  a\[d\]:=copy(s,j-i+1,i);

                  inc(d);

                end;

        Q_sort(1,d-1); a\[d+1\]:=\' \';

        for t:=1 to d-1 do

           if a\[t\]\<\>a\[t+1\] then inc(kq);

        end;

  write(f2, kq);

close(f2);

end;

{=============}

begin

  xuly;

 end.
