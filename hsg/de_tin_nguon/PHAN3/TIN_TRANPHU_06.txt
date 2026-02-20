# **KHIÊU VŨ (DANCE.CPP)**

Một làng quê có $m$ chàng trai đánh số từ 1 tới $m$ và $n$ cô gái đánh
số từ 1 tới $n$. Chàng trai thứ $i$ có chiều cao $a_{i}$
($i = 1,2,\ldots,m$), cô gái thứ $j$ có chiều cao $b_{j}$
($j = 1,2,\ldots,n$).

Trong một buổi khiêu vũ, người ta muốn chọn ra một số cặp nhảy. Mỗi cặp
nhảy gồm đúng 1 chàng trai và 1 cô gái và trong cặp đó, chàng trai phải
cao hơn cô gái. Mỗi chàng trai, cô gái trong làng không được tham gia
quá 1 cặp nhảy.

**Yêu cầu:** Tìm một số nhiều nhất các cặp nhảy thỏa mãn yêu cầu trên.

**Dữ liệu vào**

-   Dòng 1 chứa hai số nguyên dương $m,n \leq 10^{5}$

-   Dòng 2 chứa $m$ số nguyên dương $a_{1},a_{2},\ldots,a_{m}$
    ($\forall i:a_{i} \leq 10^{9}$)

-   Dòng 3 chứa $n$ số nguyên dương $b_{1},b_{2},\ldots,b_{n}$
    ($\forall j:b_{j} \leq 10^{9}$)

**Kết quả:** Ghi ra một số nguyên duy nhất là số cặp nhảy theo phương án
tìm được

**Ví dụ**

+----------------------------+-----------------------------------------+
| **INPUT**                  | **OUTPUT**                              |
+============================+=========================================+
| 3 2                        | 1                                       |
|                            |                                         |
| 1 2 3                      |                                         |
|                            |                                         |
| 2 3                        |                                         |
+----------------------------+-----------------------------------------+

**Chú ý:** Ít nhất 50% số điểm ứng với các test có $m,n \leq 1000$
