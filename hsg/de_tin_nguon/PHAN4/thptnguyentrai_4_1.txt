Họ và tên: Nguyễn Tiến Đạt

Trường THPT Nguyễn Trãi

**Bài 4: Dãy số tăng dần**

Cho dãy số nguyên 𝐴 = (𝑎~1~, 𝑎~2~, ... , 𝑎~𝑛~). Hãy tìm một đoạn gồm các
phần tử liên tiếp trong dãy A:

𝑎~𝐿~, 𝑎~𝐿+1~, ... , 𝑎~𝐻−1~, 𝑎~𝐻~ thỏa mãn hai điều kiện:

> \- Các phần tử trong đoạn có thứ tự không giảm: 𝑎~𝐿~ ≤ 𝑎~𝐿+1~ ≤ ⋯ ≤
> 𝑎~𝐻−1~ ≤ 𝑎~𝐻~
>
> \- Số phần tử trong đoạn là nhiều nhất có thể .

Quy ước: Đoạn chỉ gồm đúng 1 phần tử tỏng dãy A cũng được coi là có thứ
tự không giảm .

**Dữ liệu**: Vào từ file văn bản **BAI4.INP**

-   Dòng 1: Số nguyên dương N tương ứng số lượng phần tử của dãy A. (𝑁 ≤
    10^5^) - Dòng tiếp theo, chứa N số nguyên 𝑎~1~, 𝑎~2~, ... , 𝑎~𝑛~;
    (∀𝑖: \|𝑎~𝑖~\| ≤ 10^9^) *Các số trên một dòng của input file được ghi
    cách nhau bởi dấu cách.*

**Kết quả**: Ghi ra file văn bản **BAI4.OUT**

-   Một số duy nhất là số lượng phần tử của đoạn không giảm dài nhất tìm
    được?

**Ví dụ:**

+----------------------------------------+------+---------------------+
| > **BAI4.INP**                         |      | **BAI4.OUT**        |
+========================================+======+=====================+
| > 12                                   | > 4  |                     |
| >                                      |      |                     |
| > 88 99 [11 22 22 33]{.underline} 11   |      |                     |
| > 66 [33 44 55 77]{.underline}         |      |                     |
+----------------------------------------+------+---------------------+
