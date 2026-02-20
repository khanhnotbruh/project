Tô Thị Thìn -- THPT Hải An

CAUHOI

Câu 2: Egg (7 điểm)

Nhà hàng Pizza_Egg có một số nông dân chuyên cung cấp trứng sạch và mỗi
người có một giá bán khác nhau. Mỗi người nông dân chỉ có một số lượng
trứng nhất định mỗi ngày, nhà hàng có thể mua một số trứng từ mỗi người
nông dân, ít hơn hoặc bằng số lượng trứng của mỗi người nông dân đó.
Biết số lượng trứng mỗi ngày mà nhà hàng cần, giá mỗi quả trứng và số
lượng trứng mà mỗi người nông dân có. Hãy tính số tiền ít nhất mà nhà
hàng cần để mua được số trứng đó. Giả thiết tổng số trứng của người nông
dân đủ đáp ứng nhu cầu của nhà hàng.

Dữ liệu:

INPUT: EGG.INP

Dòng đầu tiên chứa hai số nguyên N, M. N là số trứng mà nhà hàng cần mỗi
ngày (![](media/image1.wmf)), M là số người nông dân cung cấp trứng cho
nhà hàng (![](media/image2.wmf)).

Dòng thứ i trong M dòng tiếp theo, chứa hai số nguyên Ai và Bi cách nhau
một dấu cách. Ai (![](media/image3.wmf)) là giá một quả trứng của người
nông dân i; B­i (![](media/image4.wmf)) là số trứng tối đa mà một người
nông dân có thể bán cho nhà hàng.

OUTPUT: EGG.OUT

Ghi trên một dòng duy nhất một số nguyên là số tiền nhỏ nhất mà nhà hàng
có thể mua trứng mỗi ngày.

Ví dụ:

+-----------------------------------+-----------------------------------+
| EGG.INP                           | EGG.OUT                           |
+===================================+===================================+
| 50 5                              | 250                               |
|                                   |                                   |
| 5 30                              |                                   |
|                                   |                                   |
| 10 40                             |                                   |
|                                   |                                   |
| 3 10                              |                                   |
|                                   |                                   |
| 8 80                              |                                   |
|                                   |                                   |
| 7 30                              |                                   |
+-----------------------------------+-----------------------------------+

***[Trong đó:]{.underline}***

> \- Có 70% số test ứng với 70% số điểm của bài có
> ![](media/image5.wmf)$n \leq 10^{3}$
>
> \- Có 30% số test ứng với 30% số điểm của bài có ![](media/image6.wmf)
