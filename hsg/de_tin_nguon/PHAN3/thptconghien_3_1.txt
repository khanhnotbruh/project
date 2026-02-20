**Bài 3:** Cho xâu S (1\<=s\<=250) gồm các chữ cái thường và kí tự số.

Yêu cầu:

a\. Dồn các chữ cái về cuối xâu, chữ số về đầu xâu giữ nguyên trật tự
của từng loại so với ban đầu.

b\. Mã hóa các kí tự số trên xâu s bằng phương pháp đối nghịch đảo các
kí tự '0'...'9'.

0-\>9, 1-\>8...8-\>1, 9-\>0

Dữ liệu vào; Cho tệp Bai3.INP trong đó có chuỗi S

Kết quả ghi ra tệp bai3.OUT

Dòng 1 ghi kết quả sau khi dồn

Dòng 2 ghi kết quả sau khi mã hóa

Ví dụ:

+-----------------------------+----------------------------------------+
| **Bai3.INP**                | **Bai3.OUT**                           |
+=============================+========================================+
| al1ph7ab9et8                | 1798alphabet                           |
|                             |                                        |
|                             | al8ph2ab0et1                           |
+-----------------------------+----------------------------------------+

**var f1,f2:text;**

**s1,s2,s:string;**

**ch:char;**

**function mahoa(var k:byte):char;**

**var x:char;**

**begin**

**case k of**

**48: mahoa:= chr(57);**

**49: mahoa:= chr(56);**

**50: mahoa:= chr(55);**

**51: mahoa:= chr(54);**

**52: mahoa:= chr(53);**

**53: mahoa:= chr(52);**

**54: mahoa:= chr(51);**

**55: mahoa:= chr(50);**

**56: mahoa:= chr(49);**

**57: mahoa:= chr(48);**

**end;**

**end;**

**begin**

**assign(f1,\'bai3.inp\');**

**assign(f2,\'bai3.out\');**

**reset(f1);**

**s1:=\'\';s2:=\'\';s:=\'\';**

**while not eoln(f1) do**

**begin**

**read(f1,ch);**

**if ch in\[\'0\'..\'9\'\] then**

**begin**

**s2:=s2+ch;**

**s:=s+mahoa(ord(ch));**

**end**

**else**

**begin**

**s1:=s1+ch;**

**s:=s+ch;**

**end;**

**end;**

**close(f1);**

**rewrite(f2);**

**writeln(f2,s2,s1);write(f2,s);**

**close(f2);**

**end.**
