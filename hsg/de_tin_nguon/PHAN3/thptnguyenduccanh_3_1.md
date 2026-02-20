NGUYỄN VĂN THIẾT - THPT NGUYỄN ĐỨC CẢNH

> CAUHOI

Cho một xâu S được chỉ gồm các ký tự chữ cái thường 'a′...'z' được gọi
là xâu chẵn nếu số lần xuất hiện của từng chữ cái trong xâu S là số
chẵn. 

**Dữ liệu** 

-   Một dòng chứa duy nhất xâu S có số lượng ký tự không quá 255 ký tự. 

**Kết quả** 

-   Nếu xâu S là xâu chẵn thì in ra **\"Yes\"**. Ngược lại thì in ra
    > **\"No\"**. 

  -----------------------------------------------------------------------
  **BAI1.INP**                        **BAI1.OUT** 
  ----------------------------------- -----------------------------------
  adccda                              Yes 

  adcccdaa                            No 
  -----------------------------------------------------------------------

Đáp án 

**var ch:char;**

**Fi,fo:text;**

**a:array\[\'a\'..\'z\'\] of longint;**

**begin**

**Assign(fi,\'bai1.inp\');reset(fi);**

**Assign(fo,\'bai1.out\');rewrite(fo);**

**while not eoln(fi) do**

**begin**

**read(fi,ch);**

**inc(a\[ch\]);**

**end;**

**readln;**

**for ch:=\'a\' to \'z\' do**

**if a\[ch\] mod 2 \<\> 0 then begin**

**write(fo,\'No\');**

**exit;**

**end;**

**write(fo,\'Yes\');**

**Close(fi);**

**Close(fo);**

**end.**
