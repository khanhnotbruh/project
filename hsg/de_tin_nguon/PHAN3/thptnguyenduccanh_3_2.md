NGUYỄN VĂN THIẾT - THPT NGUYỄN ĐỨC CẢNH 

>                CAUHOI 

Hai xâu kí tự S1 và S2 được gọi là hai xâu họ hàng nếu mỗi kí tự có ở
xâu này đều có ở xâu kia và ngược lại. Hai xâu rỗng cũng được xem là hai
xâu họ hàng. 

*Ví dụ*: S1 = aabccdcbe; S2 = abcde là hai xâu họ hàng. 

**Yêu cầu**: Nhập từ bàn phím hai xâu kí tự S1 và S2 (tối đa 10\^6 kí
tự) chỉ chứa chữ cái thường và không phải là hai xâu họ hàng. Hãy tìm
cách xóa ít nhất một số kí tự ở mỗi xâu (cũng có thể chỉ xóa ở một xâu)
để được hai xâu kí tự mới là hai xâu họ hàng. 

**Dữ liệu vào** 

-   Dòng đầu tiên chứa xâu kí tự S1 

```{=html}
<!-- -->
```
-   Dòng thứ hai chứa xâu kí tự S2 

**Kết quả** 

-   Ghi một số nguyên là kí tự đã xóa trong hai xâu. 

  -----------------------------------------------------------------------
  **BAI2.INP**                        **BAI2.OUT** 
  ----------------------------------- -----------------------------------
  ababcdecb \                         3 
  abmed                               

  -----------------------------------------------------------------------

***Giải thích*:** Xóa tất cả là 3 kí tự ở hai xâu, trong đó xóa 2 kí tự
chữ cái c ở xâu S1 và 1 kí tự chữ cái m ở xâu S2. 

**Đáp án** 

**type mang=array\[\'a\'..\'z\'\] of longint; ** 

**var ** 

**a,b:mang; ** 

**ch:char; ** 

**fi,fo:text; ** 

**dem:longint; ** 

**begin ** 

**assign(fi,\'bai2.inp\');reset(fi);** 

**assign(fo,\'bai2.out\');rewrite(fo);** 

**fillchar(a,sizeof(a),0); ** 

**fillchar(b,sizeof(b),0); ** 

**while not eoln(fi) do ** 

**begin ** 

**read(fi,ch); ** 

**inc(a\[ch\]); ** 

**end; ** 

**readln(fi); ** 

**while not eoln(fi) do ** 

**begin ** 

**read(fi,ch); ** 

**inc(b\[ch\]); ** 

**end; ** 

**for ch:=\'a\' to \'z\' do ** 

**if (a\[ch\]\>0) and(b\[ch\]=0) then dem:=dem+a\[ch\] else if
(a\[ch\]=0) and (b\[ch\]\>0) then dem:=dem+b\[ch\]; ** 

**write(fo,dem); ** 

**close(fi);** 

**close(fo);** 

**end.** 
