**NGUYỄN VĂN THIẾT - THPT NGUYỄN ĐỨC CẢNH**

**CAUHOI**

**Bài 5. Chia phần**

Cho dãy số nguyên $A = (a_{1},\ a_{2},\ ...,\ a_{n})$; Hãy đếm số cách
chia dãy trên thành 4 dãy con gồm các số liên tiếp của $A$ sao cho tổng
các số trong mỗi dãy con đều bằng nhau. Chính xác hơn, mỗi cách chia
được mô tả bằng bộ 3 chỉ số $(i,j,k)$: $1 \leq i < j < k < n$ . Trong đó
($a_{1},a_{2},\ldots,\ a_{i}$) là dãy 1;
${(a}_{i + 1},a_{i + 2},\ldots,\ a_{j})$ là dãy 2;
${(a}_{j + 1},a_{j + 2},\ldots,\ a_{k})$ là dãy 3 và
${(a}_{k + 1},a_{k + 2},\ldots,\ a_{n})$ là dãy 4. Hai cách chia khác
nhau ứng với hai bộ 3 chỉ số $(i,j,k)$ khác nhau.

**Dữ liệu:** Vào từ file văn bản BAI5.INP

-   Dòng đầu tiên ghi số nguyên dương $n\ (n \leq 10^{6})$

-   Dòng thứ hai ghi N số nguyên
    $a_{1},a_{2},\ldots,\ a_{n}\ (\left| a_{i} \right| \leq 10^{9};i = 1,2,\ldots,n)$;
    hai số liên tiếp cách nhau bằng một dấu trống

**Kết quả:** Ghi ra file văn bản BAI5.OUT một số nguyên là số lượng cách
chia tìm được

**Ví dụ:**

+------------------------------------+---------------------------------+
| BAI4.INP                           | BAI4.OUT                        |
+====================================+=================================+
| 8                                  | 1                               |
|                                    |                                 |
| 1 1 1 1 1 1 1 1                    |                                 |
+------------------------------------+---------------------------------+

**Dap an**

**var**

**n: longint;**

**a, S, p, q: array\[0..1000000\] of longint;**

**dapso: longint;**

**var i, j, k: longint;**

**BEGIN**

**assign(input,'BAI4.INP'); reset(input);**

**assign(output,'BAI4.OUT'); rewrite(output);**

**read(n);**

**for i:=1 to n do read(a\[i\]);**

**S\[0\]:=0;**

**for i:=1 to n do S\[i\]:=S\[i-1\]+a\[i\];**

**dapso:=0;**

**if s\[n\] mod 4=0 then**

**begin**

**p\[0\]:=0;**

**for i:=2 to n do**

**begin**

**p\[i\]=p\[i-1\];**

**if s\[i\] = s\[n\] div 4 then inc(p\[i\]);**

**end;**

**q\[n\]:=0;**

**for k:=n-1 downto 1 do**

**begin**

**q\[k\]:=q\[k+1\];**

**if s\[k\]=3\*(s\[n\] div 4) then inc(q\[k\]);**

**end;**

**for j:=2 to n-2 do if S\[j\]=2\*(S\[n\] div 4) then**

**dapso:=dapso+p\[j-1\]\*q\[j+1\];**

**end;**

**writeln(dapso);**

**END.**
