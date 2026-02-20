NGUYỄN VĂN THIẾT - THPT NGUYỄN ĐỨC CẢNH 

> CAUHOI 

Hiện nay, xem ý nghĩa biển số xe, số điện thoại, ngày sinh hay một dãy
số nào đó là điều quan tâm của nhiều người. Cách đánh giá số đẹp của dãy
số như sau: Tính tổng các chữ số trong dãy, nếu tổng là số có 1 chữ thì
đó là giá trị số đẹp (độ đẹp của dãy số), ngược lại thì tiếp tục tính
tổng các chữ số trong dãy. 

**Ví dụ:** 

-   Dãy số ngày sinh 02022020 có tổng các chữ số là 8 vậy độ đẹp của dãy
    > số là 8. 

-   Dãy số điện thoại 0912345678 có tổng các chữ số là 45 tính tục tính
    > tổng ta được tổng là 9 , vậy độ đẹp của dãy số là 9. 

**Yêu cầu**: Cho dãy số có n chữ số. Hãy đánh giá độ đẹp của dãy số đã
cho. 

**Dữ liệu vào** 

-   Chứa dãy số có n chữ số (n≤18) 

**Kết quả** 

-   Một số nguyên là độ đẹp của dãy số. 

  -----------------------------------------------------------------------
  **BAI3.INP**                        **BAI3.OUT** 
  ----------------------------------- -----------------------------------
  02022020                            8 

  0912345678                          9 
  -----------------------------------------------------------------------

**Đáp án** 

**var s:string;** 

**fi,fo:text;** 

**temp,d,c,i:longint;** 

**begin** 

**assign(fi,\'bai3.inp\');reset(fi);** 

**assign(fo,\'bai3.out\');rewrite(fo);** 

**read(fi,s);** 

**while length(s)\>1 do ** 

**begin** 

**  temp:=0;** 

**  for i:=1 to length(s) do** 

**  begin** 

**  val(s\[i\],c);** 

**  temp:=temp+c;** 

**  end;** 

**  str(temp,s);** 

**  end;** 

**write(fo,temp);** 

**close(fi);** 

**close(fo);** 

**end.** 
